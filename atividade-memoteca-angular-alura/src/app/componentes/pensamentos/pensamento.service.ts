import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Pensamento } from './pensamento';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class PensamentoService {
  private readonly API = ' http://localhost:3000/pensamentos';
  constructor(private http: HttpClient) {}

  listar(
    pagina: number,
    filtro: string,
    favorito: boolean
  ): Observable<Pensamento[]> {
    const itensPorPagina = 6;

    let params = new HttpParams()
      .set('_page', pagina)
      .set('_limit', itensPorPagina);

    if (filtro.trim().length > 2) {
      params = params.set('q', filtro);
    }

    if (favorito) {
      params = params.set('favorito', true);
    }

    return this.http.get<Pensamento[]>(this.API, { params });
  }

  criar(p: Pensamento): Observable<Pensamento> {
    return this.http.post<Pensamento>(this.API, p);
  }

  editar(p: Pensamento): Observable<Pensamento> {
    const url = `${this.API}/${p.id}`;
    return this.http.put<Pensamento>(url, p);
  }

  mudarPensamento(p: Pensamento): Observable<Pensamento> {
    p.favorito = !p.favorito;
    return this.editar(p);
  }

  excluir(id: number): Observable<Pensamento> {
    const url = `${this.API}/${id}`;
    return this.http.delete<Pensamento>(url);
  }

  buscarPorId(id: number): Observable<Pensamento> {
    const url = `${this.API}/${id}`;
    return this.http.get<Pensamento>(url);
  }
}
