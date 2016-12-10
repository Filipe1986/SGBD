package br.com.sistemafjm.Daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.sistemafjm.Models.Exercicio_Aparelho;

@Repository
@Transactional
public class Exercicio_aparelho_fichatreinoDao {

    @PersistenceContext // Injeção de do objeto
    private EntityManager manager;

    public void cadastrarExercicio(Exercicio_Aparelho exercicio) {
        manager.persist(exercicio);
    }

    /*
	 * public ArrayList<Integer> recuperarExercicioAparelho(Integer fichaId) {
	 * 
	 * }
     */
}
