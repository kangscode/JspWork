package ch02_insert.copy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

/*
 * 쿼리 실행을 위한 객체 - PreparedStatement
 * - java.sql.PreparedStatement;
 * 
 * 쿼리 실행 메서드
 * - int executeUpdate()
 *   > insert, delete, update 문에서 실행 결과를 받을 때 사용하는 메서드
 *
 *   ResultSet executeQuery()
 *   > select 문에서 실행 결과를 받을 때 사용하는 메서드
 */


/*
create table dbtest(
seq number not null,
id varchar2(20) primary key,
name varchar2(50) not null,
logtime date
);
 */

class InsertTest {
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "dbtest";
	private String pw = "a1234";
	
	public InsertTest() {
		
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
	
	public void insertArticle() {
		Scanner sc = new Scanner(System.in);
		System.out.println("이름 입력 : ");
		String name = sc.next();
		System.out.println("나이 입력 : ");
		int age = sc.nextInt();
		System.out.println("키 입력 : ");
		double height = sc.nextDouble();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int su = 0;
		
		try {
			String sql = "insert into dbtest values(?, ?, ?, sysdate)";
			
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, age);
			pstmt.setDouble(3, height);
			su = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(su + "개의 행이 추가 되었습니다..");
	}
	
	
	}
	
	

public class Insert {

	public static void main(String[] args) {
		
		InsertTest it = new InsertTest();
		it.insertArticle();
		
	}
	
}
