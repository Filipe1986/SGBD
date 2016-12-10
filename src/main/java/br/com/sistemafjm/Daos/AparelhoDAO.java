package br.com.sistemafjm.Daos;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.sistemafjm.Models.Aparelho;

@Repository
@Transactional
public class AparelhoDAO {

    @PersistenceContext // Injeção de do objeto
    private EntityManager manager;

    public void cadastrarAparelho(Aparelho aparelho) {
        manager.persist(aparelho);
    }

    public ArrayList<Aparelho> recuperarAparelhosDoBanco() {
        return (ArrayList<Aparelho>) manager.createQuery("select u from Aparelho u", Aparelho.class).getResultList();
    }

}
