package com.scc0540.PetOng.model;

import lombok.Getter;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import java.time.LocalDate;
import java.util.Set;

@Entity
@Getter
public class Voluntario {
    @Id
    private String cpf;
    private String nome;
    private LocalDate dataNascimento;
    private String email;
    private String telefone;

    @ManyToMany
    private Set<Evento> eventos;
}
