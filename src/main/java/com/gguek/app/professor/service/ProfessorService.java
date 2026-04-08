package com.gguek.app.professor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gguek.app.professor.dto.ProfessorDTO;
import com.gguek.app.professor.mapper.ProfessorMapper;



@Service
public class ProfessorService {
	
	@Autowired
	private ProfessorMapper professorMapper;
	
	public List<ProfessorDTO> list() throws Exception {
		return professorMapper.list();
	}
	

	
}
