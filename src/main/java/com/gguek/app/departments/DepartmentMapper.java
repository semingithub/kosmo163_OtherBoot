package com.gguek.app.departments;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DepartmentMapper {

	//public abstract 생략 가능
	
	//list
	List<DepartmentDTO> list() throws Exception;
	
	//detail
	DepartmentDTO detail(DepartmentDTO departmentDTO) throws Exception;
	
	//create
	int create(DepartmentDTO departmentDTO) throws Exception;
	
	//update
	int update(DepartmentDTO departmentDTO) throws Exception;
	
	//delete
	int delete(DepartmentDTO departmentDTO) throws Exception;
	
}
