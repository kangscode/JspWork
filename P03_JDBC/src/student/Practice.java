package student;

import java.util.Scanner;

/*
create table school(
name varchar2(20) not null   -- 이름
value varchar2(20),          -- 학생 - 학번, 교수 - 과목, 행정 - 부서명
code number                  -- 선택 code : 1.학생 2.교수 3.행정
);
*/

public class Practice {

	public static void mainMenu() {
		System.out.println("--- 학 사 관 리 ---");
		System.out.println("1.입력 2.검색 3.삭제 4.종료");
		System.out.print("선택 >> ");
	}
	
	public static void insertPrint() {
		System.out.println("--- 정 보 입 력 ---");
		System.out.println("1.학생 2.교수 3.관리자 4.이전");
		System.out.print("선택 >> ");
	}
	
	public static void searchPrint() {
		System.out.print("--- 검     색 ---");
		System.out.println("1.이름 2.전체 3.이전");
		System.out.print("선택 >> ");
	}
	
	public static void deletePrint() {
		System.out.println("--- 삭   제 ---");
		System.out.println("1.이름 2.이전");
		System.out.print("선택 >> ");
	}
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		School manager = new School();
		char mn;
		char dn;
		
		boolean codeRun = true;  // 진행 확인 - true : 실행, false : 종료
		while(codeRun) {
			mainMenu();
			mn = sc.next().charAt(0);
			
			switch(mn) {
			case '1' : // 입력
				insertPrint();
				dn = sc.next().charAt(0);
				manager.insert(dn);
				break;
			case '2' : // 검색
				searchPrint();
				dn = sc.next().charAt(0);
				manager.search(dn);
				break;
			case '3' : // 삭제
				deletePrint();
				dn = sc.next().charAt(0);
				manager.delete(dn);
				break;
			case '4' : // 종료
				System.out.println("- Program end -");
				codeRun = false;
				break;
			default : 
				System.out.println("선택 오류~");			
			}
		}
		
	}
	
	
}
