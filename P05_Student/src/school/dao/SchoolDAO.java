

package school.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import school.dto.SchoolDTO;

public class SchoolDAO {

	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "c##dbtest";
	private String pw = "a1234";
	
	public SchoolDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			//System.out.println("로딩 성공 ^^");
		} catch (ClassNotFoundException e) {
			//System.out.println("로딩 실패 ㅠㅠ");
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(url, user, pw);
			//System.out.println("연결 성공 !!");
		} catch (Exception e) {
			//System.out.println("연결 실패 ㅠㅠ");
			e.printStackTrace();
		}
		return con;
	}
	
	public boolean insert(SchoolDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean check = false;
		
		try {
			String sql = "insert into school values(?, ?, ?)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getValue());
			pstmt.setInt(3, dto.getCode());
			int su = pstmt.executeUpdate();		
			if(su != 0)
				check = true;
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
		return check;
		
	} // insert() end
	
	public List<SchoolDTO> getList(){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		ArrayList<SchoolDTO> list = new ArrayList<SchoolDTO>();
		
		try {
			String sql = "select * from school";
			con = getConnection();
			pstmt = con.prepareStatement(sql);			
			res = pstmt.executeQuery();
			
			while(res.next()) {
				String name = res.getString("name");
				String value = res.getString("value");
				int code = res.getInt("code");
				SchoolDTO dto = new SchoolDTO(name, value, code);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(res != null) res.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
		
	} // getList() end
	
	public void select(SchoolDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
				
		try {
			
			String sql = null;
			if(dto == null) {
				sql = "select * from school";
			} else if(dto.getName() != null) {
				sql = "select * from school where name like ?";
			} else {
				sql = "select * from school where code=?";
			}

			con = getConnection();
			pstmt = con.prepareStatement(sql);		
			if(dto != null) {
				if(dto.getName() != null) {
					pstmt.setString(1, "%"+dto.getName()+"%");
				} else {
					pstmt.setInt(1, dto.getCode());
				}
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	} // select() end
	
	
}


