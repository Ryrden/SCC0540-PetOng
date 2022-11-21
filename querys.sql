
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



INSERT INTO DINHEIRO_ARRECADADO VALUES ('123.456.789-10', TO_DATE('07/09/2022', 'dd/mm/yyyy'), 250);
INSERT INTO DINHEIRO_ARRECADADO VALUES ('123.456.789-10', TO_DATE('12/12/2022', 'dd/mm/yyyy'), 450);