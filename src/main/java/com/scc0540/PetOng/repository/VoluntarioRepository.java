package com.scc0540.PetOng.repository;

import com.scc0540.PetOng.dto.Query1DTO;
import com.scc0540.PetOng.model.Voluntario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VoluntarioRepository extends JpaRepository<Voluntario, String> {
    @Query(value = "SELECT  v.nome AS DONO, \n" +
            "        pet.nome AS PET_NOME, \n" +
            "        v.cpf AS CPF, \n" +
            "        av.data AS DATA, \n" +
            "        av.descricao AS DESCRICAO,\n" +
            "        SUM(din.valor) AS DINHEIRO_DOADO\n" +
            "FROM ACAO_VOLUNTARIA av\n" +
            "INNER JOIN VOLUNTARIO v ON v.cpf = av.voluntario\n" +
            "INNER JOIN PET pet ON pet.dono = v.cpf\n" +
            "INNER JOIN DINHEIRO_ARRECADADO din ON din.voluntario = v.cpf\n" +
            "LEFT OUTER JOIN PRODUTO_DOADO prod ON prod.voluntario = v.cpf\n" +
            "WHERE prod.nome IS NULL\n" +
            "GROUP BY v.nome, pet.nome, v.cpf, av.data, av.descricao\n" +
            "HAVING SUM(din.valor) > 500", nativeQuery = true)
    List<Query1DTO> query1();
}
