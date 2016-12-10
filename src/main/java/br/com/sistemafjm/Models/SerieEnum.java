package br.com.sistemafjm.Models;

public enum SerieEnum {

    A, AB, ABC, ABCD, ABCDE;

    public int getNumero() {
        return this.ordinal() + 1;
    }

}
