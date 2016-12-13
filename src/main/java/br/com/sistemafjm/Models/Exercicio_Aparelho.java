package br.com.sistemafjm.Models;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Exercicio_Aparelho implements Serializable {

	private static final long serialVersionUID = 1L;

	/*
	 * @Id
	 * 
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) private Integer
	 * exercicioAparelhoId;
	 */
	@EmbeddedId
	private Exercicio_AparelhoPk exercicioAparelhoPk;

	@ManyToOne(fetch = FetchType.EAGER)
	private FichaTreino ficha;

	@Enumerated(EnumType.STRING)
	private DivisaoExercicioEnum divisaoExercicio;

	private int serie;
	private int repeticoes;
	private double carga;

	@Embeddable
	@Data
	public static class Exercicio_AparelhoPk implements Serializable {

		private static final long serialVersionUID = 1L;

		@GeneratedValue
		private Integer exercicioAparelhoId;

		@OneToOne
		private Exercicio exercicio;

		@OneToOne
		private Aparelho aparelho;

		@Override
		public boolean equals(Object obj) {
			return super.equals(obj);
		}

		@Override
		public int hashCode() {
			return super.hashCode();
		}

	}

}
