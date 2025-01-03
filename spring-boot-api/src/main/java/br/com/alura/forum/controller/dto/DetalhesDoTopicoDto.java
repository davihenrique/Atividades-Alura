package br.com.alura.forum.controller.dto;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import br.com.alura.forum.enums.StatusTopico;
import br.com.alura.forum.modelo.Topico;
import lombok.Getter;

public class DetalhesDoTopicoDto {

	@Getter
	private Long id;
	@Getter
	private String titulo;
	@Getter
	private String mensagem;
	@Getter
	private LocalDateTime dataCriacao;
	@Getter
	private String nomeAutor;
	@Getter
	private StatusTopico status;
	@Getter
	private List<RespostaDto> respostas;
	
	public DetalhesDoTopicoDto(Topico topico) {
		this.id = topico.getId();
		this.titulo = topico.getTitulo();
		this.mensagem = topico.getMensagem();
		this.dataCriacao = topico.getDataCriacao();
		this.nomeAutor = topico.getAutor().getNome();
		this.status = topico.getStatus();
		this.respostas = new ArrayList<>();
		this.respostas.addAll(topico.getRespostas().stream().map(RespostaDto::new).collect(Collectors.toList()));
	}
}