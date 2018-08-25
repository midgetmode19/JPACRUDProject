package com.skilldistillery.dogbreeds.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.dogbreeds.data.DoggoDAO;
import com.skilldistillery.dogbreeds.entities.Doggo;

@Controller
public class DoggoController {
	@Autowired
	private DoggoDAO dao;
	@RequestMapping(path = "index.do")
	public String index(Model model) {
		List<Doggo> doggos = dao.loadIndex();
		model.addAttribute("doggos", doggos);
		return "index";
	}
}
