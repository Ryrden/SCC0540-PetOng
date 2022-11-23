package com.scc0540.PetOng.model;

import com.scc0540.PetOng.model.keys.EventoPK;
import lombok.Getter;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import java.util.Set;

@Entity
@Getter
public class Evento {
    @EmbeddedId
    private EventoPK primaryKey;
    private int numero;
    private String complemento;
    private String nome;

    @ManyToMany
    private Set<Voluntario> voluntarios;
}
