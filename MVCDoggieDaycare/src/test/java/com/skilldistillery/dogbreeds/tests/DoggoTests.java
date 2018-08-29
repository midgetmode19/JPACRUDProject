package com.skilldistillery.dogbreeds.tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import org.junit.After;
import org.junit.Before;

import com.skilldistillery.dogbreeds.data.DoggoDAOImpl;
import com.skilldistillery.dogbreeds.entities.Doggo;

public class DoggoTests {
	DoggoDAOImpl d;

	@Before
	public void setUp() throws Exception {
		d = new DoggoDAOImpl();
	}

	@After
	public void tearDown() throws Exception {
	}

//	@Test
	public void test() {
		assertNotEquals(null, d);
		Doggo doggo = d.findDoggoById(1);
		System.out.println("************** " + doggo);
		assertEquals("Pistol", d.findDoggoById(1).getName());
		assertEquals("Australian Shepherd", d.findDoggoById(1).getBreed());

	}

}
