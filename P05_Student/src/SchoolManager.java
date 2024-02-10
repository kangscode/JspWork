import java.util.List;
import java.util.Scanner;

import school.dao.SchoolDAO;
import school.dto.SchoolDTO;

public class SchoolManager {

	private final Scanner scanner  = new Scanner(System.in);

	public SchoolManager() {
		menu();
	}
	
	public void menu() {
		while(true) {
			System.out.println("--- 학 사  관 리 ---");
			System.out.println("1.입력  2.검색  3.삭제  4.목록");
			System.out.print("선택 >> ");
			int num = scanner.nextInt();
			
			switch(num) {
			case 1: // 입력
				insert(); break;
			case 2: // 검색
				search(); break;
			case 3: // 삭제
				break;
			case 4: // 목록
				list(); break;
			case 0: // 종료
				exit();
			default:
				System.out.println("선택 오류~");
			}
			System.out.println();
		}
	} // menu() end
	
	public int codeInput() {
		System.out.println("--- code 선택 ---");
		System.out.println("1.학생  2.교수  3.관리  4.이전");
		System.out.print("선택 >> ");
		int code = scanner.nextInt();
		return code;
	} // codeInput() end
	
	public String valueInput(int code) {
		 if(code == 1)
			 System.out.print("학번 입력 > ");
		 else if(code == 2)
			 System.out.print("과목 입력 > ");
		 else
			 System.out.print("부서 입력 > ");
		 String value = scanner.next();
		 return value;
	} // valueInput() end
	
	public void insert() {
		System.out.println("--- 데이터 추가 ---");
		int code = codeInput();
		if(code < 1 || code > 3) {
			System.out.println("이전 메뉴로 이동~");
			return;
		}
		
		System.out.print("이름 입력 > ");
		String name = scanner.next();
		String value = valueInput(code);
		
		SchoolDTO dto = new SchoolDTO(name, value, code);
		SchoolDAO dao = new SchoolDAO();
		boolean check = dao.insert(dto);
		if(check) {
			System.out.println(name + "이(가) 추가 되었습니다..");
		} else {
			System.out.println("추가 실패!!");
		}
		
	} // insert() end
	
	public void list() {
		SchoolDAO dao = new SchoolDAO();
		List data = dao.getList();
		System.out.println("--- 데이터 목록 ---");
		for(int i=0 ; i<data.size(); i++) {
			SchoolDTO man = (SchoolDTO)data.get(i);
			System.out.println(man.getName() + "\t" + man.getValue() + "\t" + man.getCode());
		}
		System.out.println();
	} // list() end
	
	public void search() {
		System.out.println("--- 데이터 검색 ---");
		System.out.println("1.이름  2.code 3.전체");
		System.out.print("선택 >> ");
		int num = scanner.nextInt();
		if(num<1 || num>3) {
			return;
		}
		
		SchoolDTO dto = null;
		if(num == 1) {
			dto = new SchoolDTO();
			System.out.print("이름 입력 > ");
			dto.setName(scanner.next());
		} else if(num == 2) {
			int code = codeInput();
			if(code<1 || code>3) {
				System.out.println("code 오류~");
				return;
			}
			dto = new SchoolDTO();
			dto.setCode(code);
		}
		
		SchoolDAO dao = new SchoolDAO();
		dao.select(dto);
		
	} // search() end
	
	public void exit() {
		System.out.println("- Program end -");
		System.exit(0);
	}
	
}

