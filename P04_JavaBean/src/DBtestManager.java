import java.util.Scanner;

import dbtest.dao.DBtestDAO;
import dbtest.dto.DBtestDTO;

public class DBtestManager {

	private final Scanner sc = new Scanner(System.in);
	
	public DBtestManager() {
		menu();
	}
	
	public void menu() {
		boolean run = true;
		while(run) {
			System.out.println("1.추가 2.수정 3.삭제 4.목록");
			System.out.print("선택 >> ");
			int num = sc.nextInt();
			
			switch(num) {
			case 1 : // 추가
				insert();
				break;
			case 2 : // 수정
				update();
				break;
			case 3 : // 삭제
				delete();
				break;				
			case 4 : // 목록
				list();
				break;
				
			case 0 : // 종료
				run = false;
				break;
			default :
				System.out.println("선택 오류~");
			}
			System.out.println();
		}
		System.out.println("- Program end -");
	}
	
	public void insert() {
		System.out.println("--- DB 추가 ---");
		System.out.print("이름 입력 > ");
		String name = sc.next();
		System.out.print("나이 입력 > ");
		int age = sc.nextInt();
		System.out.print("키 입력  >");
		double height  = sc.nextDouble();
		
		DBtestDTO dto = new DBtestDTO(name, age, height);
		DBtestDAO dao = new DBtestDAO();
		int res = dao.insert(dto);
		if(res > 0) {
			System.out.println(res + "행이 추가 되었습니다");
		} else {
			System.out.println("추가 실패~");
		}
		
	} // insert() end
	
	public void list() {
		DBtestDAO dao = new DBtestDAO();
		System.out.println("--- DB 목록 ---");
		dao.select();
		
		
	} //list() end
	
	public void update() {
		System.out.println("--- DB 수정 ---");
		System.out.print("이름 입력 > ");
		String name = sc.next();
		System.out.print("나이 입력 > ");
		int age = sc.nextInt();
		System.out.print("키 입력  > ");
		double height  = sc.nextDouble();
		
		DBtestDTO dto = new DBtestDTO(name, age, height);
		DBtestDAO dao = new DBtestDAO();
		int res = dao.update(dto);
		if(res > 0) {
			System.out.println(name + "이(가) 수정 되었습니다");
		} else {
			System.out.println("추가 실패~");
		}
	} // update() end
	
	public void delete() {
		System.out.println("--- DB 삭제 ---");
		System.out.print("이름 입력 > ");
		String name = sc.next();
		
		DBtestDAO dao = new DBtestDAO();
		int res = dao.delete(name);
		if(res > 0) {
			System.out.println(name + "이(가) 삭제되었습니다");
		} else {
			System.out.println("삭제 실패~");
		}
	} // delete() end
	
	
	
}


























