package br.com.sistemafjm.Daos;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.sistemafjm.Models.MedidasCorporais;

@Repository
@Transactional
public class MedidasCorporaisDAO {

	@PersistenceContext // Injeção de do objeto
	private EntityManager manager;

	public void cadastrarMedidas(MedidasCorporais medidas) {
		manager.persist(medidas);
	}

	public void removerMedidas(Integer fichaId) {
		String removeMedida = "delete from MedidasCorporais s " + "where s.fichaId =:fichaId";
		Query query = manager.createQuery(removeMedida).setParameter("fichaId", fichaId);
		query.executeUpdate();
	}

	public ArrayList<MedidasCorporais> recuperarMedidasDoBanco() {
		return (ArrayList<MedidasCorporais>) manager
				.createQuery("select u from MedidasCorporais u", MedidasCorporais.class).getResultList();

	}

	public MedidasCorporais buscaMedida(Integer id) {
		return manager
				.createQuery("select distinct(u) from MedidasCorporais u where u.id = :id", MedidasCorporais.class)
				.setParameter("id", id).getSingleResult();

	}

}
