//package com.gguek.app.professor.mapper;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//import java.util.List;
//
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import com.gguek.app.professor.dto.ProfessorDTO;
//
//@SpringBootTest
//class ProfessorMapperTest {
//
//	@Autowired
//	private ProfessorMapper professorMapper;
//	
//	@Test
//	void testList() throws Exception {
//		//1. 실행: mapper의 list() method를 실행
//		List<ProfessorDTO> list = professorMapper.list();
//		
//		//2. 검증: list의 size가 0보다 큰지 검증
//		assertNotNull(list, "리스트가 nuu입니다");
//		assertTrue(list.size() > 0, "조회된 교수 데이터가 없습니다");
//		
//		//3. 출력: list의 내용을 출력
//		list.forEach(professor -> {
//			System.out.println(professor);
//		});
//	}
//
//	
//	@Test
//    void testDetail() throws Exception {
//        // 1. 준비: DB에 확실히 존재하는 교수 번호 하나를 선택합니다.
//        // (방금 testCreate에서 넣은 'P200'을 써보거나, DB에 있는 번호를 넣으세요)
//        String professorNo = "P200"; 
//
//        // 2. 실행
//        ProfessorDTO professor = professorMapper.detail(professorNo);
//
//        // 3. 검증
//        assertNotNull(professor, "해당 번호의 교수님을 찾을 수 없습니다: " + professorNo);
//        assertEquals(professorNo, professor.getProfessorNo(), "조회된 번호가 일치하지 않습니다.");
//        
//        System.out.println("상세 조회 결과: " + professor);
//    }
//
//	@Test
//	void testCreate() throws Exception {
//		//dummy data
//		ProfessorDTO professorDTO = new ProfessorDTO();
//		professorDTO.setProfessorNo("P200");
//		professorDTO.setProfessorName("김교수");
//		professorDTO.setProfessorSsn("123456-1234567");
//		professorDTO.setProfessorAddress("서울시 강남구");
//		professorDTO.setDepartmentNo("002");
//		
//		int result = professorMapper.create(professorDTO);
//		
//		assertEquals(1, result, "교수 데이터 생성에 실패했습니다");
//	}
//
//	@Test
//    void testUpdate() throws Exception {
//        // 1. 준비: 수정할 더미 데이터 설정
//        ProfessorDTO professorDTO = new ProfessorDTO();
//        professorDTO.setProfessorNo("P200"); // 수정할 대상 키값
//        professorDTO.setProfessorName("김수정"); // 바꿀 이름
//        professorDTO.setProfessorAddress("서울시 송파구"); // 바꿀 주소
//
//        // 2. 실행
//        int result = professorMapper.update(professorDTO);
//
//        // 3. 검증: 수정된 행이 1개여야 함
//        assertEquals(1, result, "교수 데이터 수정에 실패했습니다.");
//        
//        // 4. (선택사항) 진짜 바뀌었는지 다시 조회해서 확인해보기
//        ProfessorDTO updated = professorMapper.detail("P200");
//        assertEquals("김수정", updated.getProfessorName());
//    }
//
//	@Test
//    void testDelete() throws Exception {
//        // 1. 준비: 삭제할 더미 데이터 번호
//        String professorNo = "P200";
//
//        // 2. 실행
//        int result = professorMapper.delete(professorNo);
//
//        // 3. 검증: 삭제된 행이 1개여야 함
//        assertEquals(1, result, "교수 데이터 삭제에 실패했습니다.");
//        
//        // 4. (선택사항) 삭제 후 조회하면 null이 나와야 함
//        assertNull(professorMapper.detail(professorNo), "삭제 후에도 데이터가 남아있습니다.");
//    }
//
//}
