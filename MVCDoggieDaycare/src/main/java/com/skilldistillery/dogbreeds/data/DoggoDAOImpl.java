package com.skilldistillery.dogbreeds.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.skilldistillery.dogbreeds.entities.Doggo;

@Transactional
@Component
public class DoggoDAOImpl implements DoggoDAO {
	@PersistenceContext
	private EntityManager em;
	private String query;

	@Override
	public List<Doggo> loadIndex() {
		query = "SELECT d FROM Doggo d";
		List<Doggo> doggos = em.createQuery(query, Doggo.class).getResultList();
		return doggos;
	}

	@Override
	public Doggo findDoggoById(int id) {
		Doggo doggo = em.find(Doggo.class, id);
		return doggo;
	}

	@Override
	public Doggo addDoggo(Doggo doggo) {
		em.persist(doggo);
		return doggo;
	}

	@Override
	public boolean deleteDoggoById(int id) {
		Doggo doggo = em.find(Doggo.class, id);
		em.remove(doggo); // performs the delete on the managed entity
		if (em.find(Doggo.class, id) == null) {
			return true;
		}
		else {
			return false;
		}
	}

}
