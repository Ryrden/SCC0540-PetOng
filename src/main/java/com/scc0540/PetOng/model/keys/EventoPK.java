package com.scc0540.PetOng.model.keys;

import javax.persistence.Embeddable;
import java.time.LocalDate;
import java.io.Serializable;

@Embeddable
public class EventoPK implements Serializable {
    private LocalDate data;
    private String cep;
}
