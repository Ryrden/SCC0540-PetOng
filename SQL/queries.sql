
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
  Selecionar os profissionais que realizaram castração e adoção; não doaram dinheiro; e mais de 5 produtos. Além disso, ordernar por ordem ascendente de produtos doados.
  Retornar informacoes como nome, data_de_nascimento e email
*/

SELECT  prof.voluntario         AS CPF,
        vo.nome                 AS NOME,
        vo.data_nascimento      AS DATA_NASCIMENTO,
        vo.email                AS EMAIL,
        SUM(prod.quantidade)    AS QNT_PRODUTOS
FROM VOLUNTARIO_PROFISSIONAL prof
INNER JOIN ACAO_PROFISSIONAL aprof ON aprof.profissional = prof.voluntario
INNER JOIN PET pet ON pet.dono = prof.voluntario
INNER JOIN PRODUTO_DOADO prod ON prod.voluntario = prof.voluntario
LEFT OUTER JOIN DINHEIRO_ARRECADADO din ON din.voluntario = prof.voluntario
INNER JOIN VOLUNTARIO vo ON vo.cpf = prof.voluntario
WHERE aprof.descricao = 'Castração' AND din.valor IS NULL
GROUP BY prof.voluntario, vo.nome, vo.data_nascimento, vo.email, aprof.descricao
HAVING SUM(prod.quantidade) > 5
ORDER BY QNT_PRODUTOS ASC;

/*
    Mostrar a quantidade de produtos arrecadados por cada petshop bem como o numero de vezes que cada petshop
    participou de uma promocao em um evento.
*/

SELECT  petshop.cnpj    AS CNPJ,
        petshop.nome    AS NOME,
        reme.petshop    AS PETSHOP,
        COALESCE(promoc.part, 0) AS NUMERO_PARTICIAPACAO,
        SUM(prod.quantidade) AS QNT_PROD_RECEBIDO
        
FROM PETSHOP petshop
INNER JOIN REMESSA reme ON reme.petshop = petshop.cnpj
INNER JOIN PRODUTO_DOADO prod ON prod.voluntario = reme.voluntario AND prod.data = reme.data_doacao
LEFT JOIN (
    SELECT promocao.petshop AS cnpj, COUNT(promocao.petshop) AS part FROM PROMOCAO GROUP BY promocao.petshop
) promoc ON promoc.cnpj = petshop.cnpj
GROUP BY petshop.cnpj, petshop.nome, reme.petshop, promoc.part
ORDER BY QNT_PROD_RECEBIDO DESC;



/*

    Seleciona petshops que participaram de, no mínimo, uma promocao, mostrando a porcentagem de sua ocupacao atual
    em relacao ao numero de vagas que ele possui.
    
*/


SELECT  petshop.cnpj    AS CNPJ,
        petshop.nome    AS NOME,
        petshop.n_pets  AS N_MAX_DE_PETS,
        COALESCE(info.ocup,0)       AS N_DE_PETS,
        COALESCE((info.ocup/petshop.n_pets)*100,0) AS PORCENTAGEM_OCUPACAO,
        COUNT(promo.petshop)                        AS PARTICIPACAO_PROMO
FROM PETSHOP petshop
LEFT JOIN PROMOCAO promo ON promo.petshop = petshop.cnpj
LEFT JOIN (
    SELECT pet.abrigo AS cnpj, count(pet.abrigo) AS ocup FROM PET pet WHERE pet.dono IS NULL GROUP BY pet.abrigo
) info ON info.cnpj = petshop.cnpj
GROUP BY petshop.cnpj, petshop.nome, petshop.n_pets, COALESCE(info.ocup,0), COALESCE((info.ocup/petshop.n_pets)*100,0)
HAVING COUNT(promo.petshop) >= 1
ORDER BY PORCENTAGEM_OCUPACAO DESC;



/*

  Selecionar nro_registro, nome, raça de todos os pets que não tem dono, e que já tomaram as seguintes vacinas: Antirrábica e Raiva. Além disso, trazer junto o nome do petshop o qual o pet está abrigado.

*/



SELECT  p.registro,
        p.nome AS NOME_PET,
        p.raca,
        petshop.nome,
        v.nome AS NOME_DONO
FROM PET p
LEFT JOIN VOLUNTARIO v ON v.CPF = p.DONO
INNER JOIN PETSHOP ON petshop.cnpj = p.abrigo
WHERE NOT EXISTS(
    (SELECT DISTINCT v.vacina FROM VACINAS v WHERE v.vacina IN ('Antirrábica', 'Raiva'))
    MINUS
    (SELECT pv.vacina FROM PET INNER JOIN VACINAS pv ON pv.pet = p.registro)
)
AND v.nome IS NULL;







