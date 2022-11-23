package com.scc0540.PetOng.controller.ExceptionHandler;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StandardError {
    private Long timestamp;
    private int status;
    private String message;

    public StandardError(int status, Long timestamp,String message) {
        super();
        this.timestamp = timestamp;
        this.status = status;
        this.message = message;
    }
}
