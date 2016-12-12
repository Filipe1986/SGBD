package br.com.sistemafjm.Models;

public enum DivisaoTreinoEnum {

    A, AB, ABC, ABCD, ABCDE;

    public int getNumero() {
        return this.ordinal() + 1;
    }

}
