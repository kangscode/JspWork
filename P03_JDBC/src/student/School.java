package student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class School {
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "dbtest";
	private String pw = "a1234";

	public School() {
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("로딩 성공^^");
		} catch (ClassNotFoundException e) {
			System.out.println("로딩 실패 ㅠㅠ");
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(url, user, pw);
			System.out.println("연결 성공 !!");
		} catch (Exception e) {
			System.out.println("연결 실패 ㅠㅠ");
			e.printStackTrace();
		}
		return con;
	}
	
	// 입력 : 1.학생 -> 학번, 2.교수 -> 과목, 3.관리자 -> 부서명
	public void insert(char select) {
		Scanner sc = new Scanner(System.in);
		String name;
		String value;	// 학번, 과목, 부서
		int code;		// 분류 번호
		
		if(select >= '1' && select <= '3') { // 잘못된 값이면 menu로 이동
			System.out.print("이름 입력 > ");
			name = sc.next();
			if(select == '1') {
				System.out.print("학번 입력 > ");
			} 
			else if (select == '2') {
				System.out.print("과목 입력 > ");
			}
			else {
				System.out.print("부서 입력 >");
			}
			value = sc.next();
			code = (int)select - 48; // 48 -> '0'(아스키 코드)
		} else {
			return;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int su = 0;
		
		try {
			
			String sql = "insert into school values(?, ?, ?)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, value);
			pstmt.setInt(3, code);			
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}		
		}

	} // insert() end
	
	// 검색 : 1.이름  2.전체 3.이전
	public void search(char select) {
		
		Scanner sc = new Scanner(System.in);
		String search = null;
		String sql = null;
		
		if(select == '1') {
			System.out.print("검색 이름 > ");
			search = sc.next();
			sql = "select * from school where name like ?";
		}
		else if(select == '2') {
			sql = "select * from school";
		}
		else {
			return;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			if(select == '1') {
				pstmt.setString(1, "%"+search+"%");
			}
			res = pstmt.executeQuery();
			
			while(res.next()) {
				String name = res.getString("name");
				String value = res.getString("value");
				int code = res.getInt("code");
				String codeTitle;
				if(code == 1) codeTitle = "학번";
				else if(code == 2) codeTitle = "과목";
				else codeTitle = "부서";
				
				System.out.println("이름 : " + name + "\t" + codeTitle + " : " + value);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(res != null) res.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	} // serach() end
	
	// 삭제 : 1.이름  2.이전
	public void delete(char select) {
		
		Scanner sc = new Scanner(System.in);
		String dname;
		
		if(select == '1') {
			System.out.print("삭제 이름 입력 >> ");
			dname = sc.next();
		}
		else {
			return;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int su = 0;
		
		try {
			String sql = "delete school where name=?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dname);
			su = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println(su + "개의 행이 삭제 되었습니다");
	
	
	}
	
	
	
	
	
}
