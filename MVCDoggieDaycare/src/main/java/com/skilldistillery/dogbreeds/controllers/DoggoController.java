package com.skilldistillery.dogbreeds.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.skilldistillery.dogbreeds.data.DoggoDAO;

@Controller
public class DoggoController {
	@Autowired
	private DoggoDAO dao;
}
