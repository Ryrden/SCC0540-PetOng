package com.scc0540.PetOng.controller;

import com.scc0540.PetOng.dto.Query1DTO;
import com.scc0540.PetOng.repository.VoluntarioRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

public class QueryController {


    private final VoluntarioRepository voluntarioRepository;

    public QueryController(VoluntarioRepository voluntarioRepository) {
        this.voluntarioRepository = voluntarioRepository;
    }

    @GetMapping(value="/query1")
    public ResponseEntity<List<Query1DTO>> query1(){
        var response = voluntarioRepository.query1();
        return ResponseEntity.ok(response);
    }
}
