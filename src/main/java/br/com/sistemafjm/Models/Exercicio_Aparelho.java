package br.com.sistemafjm.Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Exercicio_Aparelho implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ExercicioAparelhoId;

	@JoinColumn(nullable = false)
	@OneToOne(fetch = FetchType.EAGER)
	private Exercicio exercicio;
	@JoinColumn(nullable = false)
	@OneToOne(fetch = FetchType.EAGER)
	private Aparelho aparelho;

}
