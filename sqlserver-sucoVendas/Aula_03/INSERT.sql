USE SUCOS_VENDAS;

INSERT INTO [TABELA DE PRODUTOS] VALUES(
    '1040107',
    'Light 350 ml - Melancia',
    'Lata',
    '350 ml',
    'Melancia',
    4.56
);

INSERT INTO [TABELA DE PRODUTOS] VALUES
('1037797', 'Clean 2 Litros Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha 700 ml Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51),
('1088126', 'Linha Citrus 1 Litro Limão', 'PET', '1 Litro', 'Limão', 7.00);

INSERT INTO [TABELA DE CLIENTES] VALUES
(
    '00384393431',
    'João da Silva',
    'Rua Projetada A',
    'Número 233',
    'Copacabana',
    'RJ',
    '20000000',
    '1965-03-21',
    57,
    'M',
    20000000,
    3000.30,
    1),
(
    '00384393555',
    'Maria Clara',
    'Rua Projetada A',
    'Número 233',
    'Copacabana',
    'RJ',
    '20000000',
    '1975-03-21',
    47,
    'F',
    200000,
    3000.30,
    0);

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], EMBALAGEM, TAMANHO, [PRECO DE LISTA], [SABOR])
VALUES
('5449310', 'Frescor do Verão - 350 ml - Limão', 'Lata', '350 ml',2.45, 'Limão'),
('1078680', 'Frescor do Verão - 350 ml - Manga', 'Lata', '350 ml',3.18, 'Manga');
