package br.com.sistemafjm.Daos;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.sistemafjm.Models.FichaTreino;

@Repository
@Transactional
public class FichaTreinoDAO {

	@PersistenceContext // Injeção de do objeto
	private EntityManager manager;

	public void cadastrarFicha(FichaTreino treino) {
		manager.persist(treino);
	}

	public void atualizarFicha(FichaTreino treino) {
		manager.merge(treino);

	}

	/**
	 *
	 * @param id
	 * @return UsuarioModelo
	 */
	public FichaTreino buscaFicha(Integer fichaId) {
		return manager.find(FichaTreino.class, fichaId);

	}

	/**
	 * Recupera todas as fichas de treino do banco
	 *
	 * @return
	 */
	public ArrayList<FichaTreino> recuperarFichasDoBanco() {

		return (ArrayList<FichaTreino>) manager.createQuery("select u from FichaTreino u", FichaTreino.class)
				.getResultList();
	}

}
