package com.gguek.app.departments;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentService {

	@Autowired
	private DepartmentMapper departmentMapper;
	
	public List<DepartmentDTO> list() throws Exception {
		return departmentMapper.list();
	}
	
	public int create(DepartmentDTO departmentDTO) throws Exception {
		return departmentMapper.create(departmentDTO);
	}
	
	public int delete(DepartmentDTO departmentDTO) throws Exception {
		return departmentMapper.delete(departmentDTO);
	}
	
	public int update(DepartmentDTO departmentDTO) throws Exception {
		return departmentMapper.update(departmentDTO);
	}
	
	public DepartmentDTO detail(DepartmentDTO departmentDTO) throws Exception {
		return departmentMapper.detail(departmentDTO);
	}
	
}
