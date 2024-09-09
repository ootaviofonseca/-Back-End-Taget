SELECT
    c.codigo AS codigo,
    c.razao_social AS razao_social,
    t.numero AS telefone
FROM
    cliente c
JOIN
    estado e ON c.estado_nome = e.nome
JOIN
    cliente_telefone ct ON c.codigo = ct.cliente_codigo
JOIN
    telefone t ON ct.telefone_id = t.id
WHERE
    e.nome = 'SP';
