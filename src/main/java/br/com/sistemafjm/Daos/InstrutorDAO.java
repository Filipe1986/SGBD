package br.com.sistemafjm.Daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.sistemafjm.Models.InstrutorModelo;

@Repository
@Transactional
public class InstrutorDAO {

    @PersistenceContext // Injeção de do objeto
    private EntityManager manager;

    public void cadastrarInstrutor(InstrutorModelo instrutor) {
        manager.persist(instrutor);

    }

    /**
     * Retorna um arraylist de instrutor
     *
     * @return List<InstrutorModelo>
     */
    public List<InstrutorModelo> recuperarInstrutores() {

        return manager.createQuery("select i from InstrutorModelo i", InstrutorModelo.class).getResultList();
    }

    public InstrutorModelo buscaInstrutor(Integer id) {
        System.out.println("Entrou no busca instrutor com  o id: " + id);
        return manager.createQuery("select distinct(i) from InstrutorModelo i where i.id = :id", InstrutorModelo.class)
                .setParameter("id", id).getSingleResult();
    }

}
