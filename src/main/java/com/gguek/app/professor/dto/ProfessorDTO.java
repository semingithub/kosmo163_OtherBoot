package com.gguek.app.professor.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProfessorDTO {

	private String professorNo;
	private String professorName;
	private String professorSsn;
	private String professorAddress;
	private String departmentNo; //FK
	
	// 화면 출력을 위해 '조인'해올 데이터 한두 개만 더 추가
    private String departmentName;
	
}
