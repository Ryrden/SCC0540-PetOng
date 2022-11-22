
/* 
        Problema resolvido: Mostre a lista dos donos de pets que somente fizeram a adoção,
   isto é, não doaram nenhum produto em nenhum evento mas doaram mais que 500 reais em dinheiro.
   
   Descrição simples:
   prod.nome não pode ser null, então usamos deste fato para resgatar as entradas que não possuem correspondência na direita. 
   Dessa forma, conseguimos os CPFs de quem nunca doou nenhum produto
   
*/
SELECT  v.nome AS DONO, 
        pet.nome AS PET_NOME, 
        v.cpf AS CPF, 
        av.data AS DATA, 
        av.descricao AS DESCRICAO,
        SUM(din.valor) AS DINHEIRO_DOADO
FROM ACAO_VOLUNTARIA av
INNER JOIN VOLUNTARIO v ON v.cpf = av.voluntario
INNER JOIN PET pet ON pet.dono = v.cpf
INNER JOIN DINHEIRO_ARRECADADO din ON din.voluntario = v.cpf
LEFT OUTER JOIN PRODUTO_DOADO prod ON prod.voluntario = v.cpf
WHERE prod.nome IS NULL
GROUP BY v.nome, pet.nome, v.cpf, av.data, av.descricao
HAVING SUM(din.valor) > 500;


/*
    Desejamos resgatar o cpf, nome, email, quantidade de dinheiro doada, quantidade de produtos doados e numero de acoes realizadas, 
    dos profissinais que realizaram no mínimo duas ações profissionais e que, doaram, no mínimo, 300 reais,
    ou doaram mais de 3 unidades de brinquedos / ração
*/


SELECT  aprof.profissional AS CPF,
        prof.nome AS NOME,
        prof.email AS EMAIL,
        COALESCE(d.dinheiro_doado, 0) AS DINHEIRO_DOADO,
        COALESCE(p.qnt_doada, 0) AS PRODUTOS_DOADOS,
        COUNT(aprof.profissional) AS N_ACOES
FROM ACAO_PROFISSIONAL aprof
LEFT JOIN (
    SELECT din.voluntario AS CPF, SUM(din.valor) AS dinheiro_doado FROM DINHEIRO_ARRECADADO din GROUP BY din.voluntario
) d ON d.cpf = aprof.profissional
LEFT JOIN (
    SELECT prod.voluntario AS CPF, SUM(prod.quantidade) AS qnt_doada FROM PRODUTO_DOADO prod GROUP BY prod.voluntario
) p ON p.cpf = aprof.profissional
INNER JOIN VOLUNTARIO prof ON prof.cpf = aprof.profissional
GROUP BY aprof.profissional, prof.nome, prof.email, d.dinheiro_doado, p.qnt_doada
HAVING COUNT(aprof.profissional) >= 2 
AND (d.dinheiro_doado >= 300 OR p.qnt_doada > 3);



/*
    
    
    
*/







