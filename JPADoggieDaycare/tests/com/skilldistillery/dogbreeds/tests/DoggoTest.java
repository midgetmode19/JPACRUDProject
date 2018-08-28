package com.skilldistillery.dogbreeds.tests;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.dogbreeds.entities.Doggo;

class DoggoTest {
	EntityManagerFactory emf;
	EntityManager em;
	Doggo doggo;

	@BeforeEach
	void setUp() throws Exception {
		
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void test() {
		emf = Persistence.createEntityManagerFactory("DoggieDaycare");
		em = emf.createEntityManager();
		doggo = em.find(Doggo.class, 1);
		
		assertEquals("Pistol", doggo.getName());
	}

}
