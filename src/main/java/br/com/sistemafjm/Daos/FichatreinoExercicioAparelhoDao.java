package br.com.sistemafjm.Daos;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.sistemafjm.Models.FichatreinoExercicioAparelho;

@Repository
@Transactional
public class FichatreinoExercicioAparelhoDao {

    @PersistenceContext // Injeção de do objeto
    private EntityManager manager;

    public void cadastrarExercicio(FichatreinoExercicioAparelho exercicio) {
        manager.persist(exercicio);
    }

    public ArrayList<FichatreinoExercicioAparelho> recuperarFichatreinoExercicioAparelhoDoBanco() {
        return (ArrayList<FichatreinoExercicioAparelho>) manager
                .createQuery("select u from FichatreinoExercicioAparelho u", FichatreinoExercicioAparelho.class)
                .getResultList();
    }

}
