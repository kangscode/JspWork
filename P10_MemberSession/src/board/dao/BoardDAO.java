package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import board.dto.BoardDTO;

public class BoardDAO {
	
	private String Driver="oracle.jdbc.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "dbtest";
	private String pw = "a1234";
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet res;
	
	public BoardDAO() {
		
		try {
			Class.forName(Driver);
			System.out.println("로딩 성공^^");
		} catch (ClassNotFoundException e) {
			System.out.println("로딩 실패 ㅠㅠ");
			e.printStackTrace();
		}
	}
	
	
	public Connection getConnection() {
		
		try {
			con = DriverManager.getConnection(url, user, pw);
			System.out.println("연결 성공 !!");
		} catch (Exception e) {
			System.out.println("연결 실패 ㅠㅠ");
			e.printStackTrace();
		}
		return con;
	}
	
	// 글쓰기
	public int boardWrite(BoardDTO boardDTO) {
		
		int res = 0;
		
		try {
			String sql = "insert into board values( board_seq.nextval, ?, ?, ?, ?, 0, sysdate)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, boardDTO.getId());
			pstmt.setString(2, boardDTO.getName());
			pstmt.setString(3, boardDTO.getSubject());
			pstmt.setString(4, boardDTO.getContent());
			res = pstmt.executeUpdate();
			
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
		return res;
		
	}
	
	
	

}
