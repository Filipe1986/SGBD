package br.com.sistemafjm.Daos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.sistemafjm.Models.UsuarioModelo;

@Repository
@Transactional
public class UsuarioDAO {

    @PersistenceContext // Injeção de do objeto
    private EntityManager manager;

    public void cadastrarUsuario(UsuarioModelo usuario) {
        manager.persist(usuario);

    }

    /**
     * @return List<UsuarioModelo>
     */
    public List<UsuarioModelo> recuperarUsuariosDoBanco() {
        return manager.createQuery("select u from UsuarioModelo u", UsuarioModelo.class).getResultList();
    }

    /**
     *
     * @param id
     * @return UsuarioModelo
     */
    public UsuarioModelo buscaUsuario(Integer id) {

        return manager.createQuery("select distinct(u) from UsuarioModelo u where u.id = :id", UsuarioModelo.class)
                .setParameter("id", id).getSingleResult();

    }

    public ArrayList<UsuarioModelo> recuperarUsuariosComNome(String name) {
        Query query = manager.createQuery("SELECT u UsuarioModelo u  WHERE u.nome LIKE CONCAT ('%', name ,'%')");
        query.setParameter(1, name);
        return (ArrayList<UsuarioModelo>) query.getResultList();
    }

    public void deletarUsuario(UsuarioModelo usuario) {
        manager.createQuery("delete u from UsuarioModelo u where u.id = :id", UsuarioModelo.class).setParameter("id",
                usuario.getId());

    }

}
