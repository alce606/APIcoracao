package com.itb.grupo4.tcc.exceptions;

public class NotFound extends RuntimeException {

    // extends : Herança, significa que a BadRequest é uma sub-classe ("filha") de RuntimeExcepiton
    //           ou seja, todos os recursos (atributos e métodos ) de RuntimeException pertencem também
    //           a BadRequest

    public NotFound(String message) {

        super(message);
    }


}
