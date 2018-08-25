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

}
