package com.skilldistillery.dogbreeds.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.dogbreeds.data.DoggoDAO;
import com.skilldistillery.dogbreeds.entities.Doggo;

@Controller
public class DoggoController {
	@Autowired
	private DoggoDAO dao;

	@RequestMapping(path = "index.do")
	public String index() {

		return "index";
	}

	@RequestMapping(path = "listDoggos.do")
	public String listDoggos(Model model) {
		List<Doggo> doggos = dao.loadIndex();
		model.addAttribute("doggos", doggos);
		return "listDoggos";
	}

	@RequestMapping(path = "getDoggo.do", method = RequestMethod.GET)
	public String showDoggoById(Model model, int id) {
		Doggo d = dao.findDoggoById(id);
		model.addAttribute(d);
		return "showDoggo";
	}

	@RequestMapping(path = "addDoggo.do", method = RequestMethod.POST)
	public ModelAndView addDoggoToData(Doggo doggo, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		dao.addDoggo(doggo);
		redir.addFlashAttribute("doggo", doggo);
		mv.setViewName("redirect:doggoAdded.do");
		return mv;
	}

	@RequestMapping(path = "doggoAdded.do", method = RequestMethod.GET)
	public String doggoActionView() {
		return "doggoAdded";
	}

	@RequestMapping(path = "updateDoggo.do", method = RequestMethod.POST)
	public ModelAndView updateExistingDoggo(int id, Doggo doggo) {
		ModelAndView mv = new ModelAndView();
		Doggo updatedDoggo = dao.updateDoggo(id, doggo);
		mv.addObject("updated", updatedDoggo);
		mv.setViewName("updatedDoggo");
		return mv;
	}

	@RequestMapping(path = "deleteDoggo.do", params = "id", method = RequestMethod.POST)
	public ModelAndView deleteDoggo(int id) {
		ModelAndView mv = new ModelAndView();
		boolean deletedDoggo = dao.deleteDoggoById(id);
		mv.addObject("succeeded", deletedDoggo);
		mv.setViewName("deletedDoggo");
		return mv;
	}

	@RequestMapping(path = "getDoggoByName.do", method = RequestMethod.GET)
	public String showDoggoByName(Model model, String name) {
		List<Doggo> doggos = dao.findDoggoByName(name);
		model.addAttribute(doggos);
		return "listDoggosByName";
	}
}
