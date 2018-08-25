package com.skilldistillery.dogbreeds.data;

import java.util.List;

import com.skilldistillery.dogbreeds.entities.Doggo;

public interface DoggoDAO {
	List<Doggo> loadIndex();
}
