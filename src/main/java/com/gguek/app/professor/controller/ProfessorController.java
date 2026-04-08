package com.gguek.app.professor.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.gguek.app.professor.dto.ProfessorDTO;
import com.gguek.app.professor.service.ProfessorService;

@Controller
public class ProfessorController {

	private ProfessorService professorService;

	@GetMapping("list")
	public void list(Model model) throws Exception {
		List<ProfessorDTO> ar = professorService.list();
		
		model.addAttribute("list", ar);
	}
	
	@GetMapping("detail")
	public void detail(Model model, ProfessorDTO professorDTO) throws Exception {
		ProfessorDTO p = professorService.detail(professorDTO);
		model.addAttribute("p", p);
		
	}
}
