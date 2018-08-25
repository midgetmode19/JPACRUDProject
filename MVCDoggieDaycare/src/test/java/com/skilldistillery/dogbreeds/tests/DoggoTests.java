package com.skilldistillery.dogbreeds.tests;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.skilldistillery.dogbreeds.data.DoggoDAOImpl;

public class DoggoTests {
	DoggoDAOImpl d;

	@Before
	public void setUp() throws Exception {
		d = new DoggoDAOImpl();
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		assertEquals("Pistol", d.findDoggoById(2).getName());
		assertEquals("Australian Shepherd", d.findDoggoById(2).getBreed());

	}

}
