package br.com.sistemafjm.Daos;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.sistemafjm.Models.Exercicio_Aparelho;

@Repository
@Transactional
public class ExercicioAparelhoDAO {

    @PersistenceContext // Injeção de do objeto
    private EntityManager manager;

    public void cadastrarExercicio(Exercicio_Aparelho exercicio) {
        manager.persist(exercicio);
    }

    public ArrayList<Exercicio_Aparelho> recuperarExerciciosDoBanco() {
        return (ArrayList<Exercicio_Aparelho>) manager
                .createQuery("select u from Exercicio_Aparelho u", Exercicio_Aparelho.class).getResultList();
    }

}
