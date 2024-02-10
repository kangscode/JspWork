package ch04_update;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

class UpdateTest {
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "dbtest";
	private String pw = "a1234";
	
	public UpdateTest() {
		
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
	
	public void updateArticle() {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("수정 이름 입력 : ");
		String name = sc.next();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int su = 0;
		
		try {
			String sql = "update dbtest set age=age+1 where name like ?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
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
		System.out.println(su + "개의 행이 수정되었습니다..");
		
	}
	
	
}

public class Update {

	public static void main(String[] args) {
		
		UpdateTest ut = new UpdateTest();
		ut.updateArticle();

	}

}
