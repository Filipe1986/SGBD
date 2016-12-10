package br.com.sistemafjm.Models;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class FichatreinoExercicioAparelho {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer fichaExercicioId;

    @OneToOne(fetch = FetchType.EAGER)
    private Exercicio_Aparelho exercicio_Aparelho;

    @ManyToOne(fetch = FetchType.EAGER)
    private FichaTreino ficha;

    @Enumerated(EnumType.STRING)
    private PertenceSerieEnum seriePertencente;
    private int repeticoes;
    private double carga;
    private int tempoDeDescanso;
    @Enumerated(EnumType.STRING)
    private FichaAtualEnum atual;
}
