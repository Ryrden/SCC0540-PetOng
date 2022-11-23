package com.scc0540.PetOng.repository;

import com.scc0540.PetOng.model.Evento;
import com.scc0540.PetOng.model.keys.EventoPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface EventoRepository extends JpaRepository<Evento, EventoPK> {

}
