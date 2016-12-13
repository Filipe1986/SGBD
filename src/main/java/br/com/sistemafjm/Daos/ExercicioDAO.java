package br.com.sistemafjm.Daos;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.sistemafjm.Models.Exercicio;

@Repository
@Transactional
public class ExercicioDAO {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrarExercicio(Exercicio exercicio) {
		manager.persist(exercicio);

	}

	/**
	 * @return List<Exercicio>
	 */
	public ArrayList<Exercicio> recuperarExerciciosDoBanco() {
		return (ArrayList<Exercicio>) manager.createQuery("select u from Exercicio u", Exercicio.class).getResultList();
	}

	public Exercicio buscaExercicio(Integer exercicioId) {

		return manager
				.createQuery("select distinct(i) from Exercicio i where i.exercicioId = :exercicioId", Exercicio.class)
				.setParameter("exercicioId", exercicioId).getSingleResult();

	}
}
