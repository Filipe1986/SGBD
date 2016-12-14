package br.com.sistemafjm.Models;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Exercicio_Aparelho implements Serializable {

	private static final long serialVersionUID = 1L;

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
	public static class Exercicio_AparelhoPk implements Serializable {

		private static final long serialVersionUID = 1L;

		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer exercicioAparelhoId;

		@OneToOne(fetch = FetchType.EAGER)
		private Exercicio exercicio;

		@OneToOne(fetch = FetchType.EAGER)
		private Aparelho aparelho;

		public Integer getExercicioAparelhoId() {
			return exercicioAparelhoId;
		}

		public void setExercicioAparelhoId(Integer exercicioAparelhoId) {
			this.exercicioAparelhoId = exercicioAparelhoId;
		}

		public Exercicio getExercicio() {
			return exercicio;
		}

		public void setExercicio(Exercicio exercicio) {
			this.exercicio = exercicio;
		}

		public Aparelho getAparelho() {
			return aparelho;
		}

		public void setAparelho(Aparelho aparelho) {
			this.aparelho = aparelho;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj) {
				return true;
			}
			if (obj instanceof Exercicio_Aparelho) {
				return (((Exercicio_Aparelho) obj).getExercicioAparelhoPk().getExercicioAparelhoId()
						.equals(exercicioAparelhoId)
						&& ((Exercicio_Aparelho) obj).getExercicioAparelhoPk().getAparelho().getAparelhoId()
								.equals(aparelho.getAparelhoId())
						&& ((Exercicio_Aparelho) obj).getExercicioAparelhoPk().getExercicio().getExercicioId()
								.equals(exercicio.getExercicioId()));
			}
			if (!(obj instanceof Exercicio_Aparelho)) {
				return false;
			}
			return super.equals(obj);
		}

		@Override
		public int hashCode() {
			int result = 17;
			result = 31 * result + exercicioAparelhoId.hashCode();
			result = 31 * result + exercicio.hashCode();
			result = 31 * result + aparelho.hashCode();
			return result;
		}

	}

}
