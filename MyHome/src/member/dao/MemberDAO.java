
package member.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import member.dto.MemberDTO;

public class MemberDAO {

	//private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	//private String user ="spring01";
	//private String password = "spring";

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet res;

	private static DataSource ds;

	//SingleTon 패턴
	// - 프로그램에서단하나의인스턴스공간이만들어지도록하는패턴...
	private static MemberDAO instance;

	private MemberDAO() {

	}

	public static MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}

	static {
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

//	public MemberDAO() {
//		try {
//			Class.forName("oracle.jdbc.OracleDriver");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//		}

//	public Connection getConnection() {
//
//		try {
//			con = DriverManager.getConnection(url);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return con;
//	}

private MemberDTO makeDTO(ResultSet rs) {
        MemberDTO dto = null;
        try {
            if(rs.next()) {
                dto = new MemberDTO();
                dto.setNo(rs.getInt("no"));
                dto.setId(rs.getString("id"));
                dto.setPassword(rs.getString("password"));
                dto.setName(rs.getString("name"));
                dto.setEmail(rs.getString("email"));
                dto.setTel1(rs.getString("tel1"));
                dto.setTel2(rs.getString("tel2"));
                dto.setTel3(rs.getString("tel3"));
                }
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return dto;
}

	public MemberDTO checkLogin(MemberDTO memberDTO) {

		String sql = "select * from member where id=? and password=?";

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPassword());
			res = pstmt.executeQuery();
			memberDTO = makeDTO(res);
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
		return memberDTO;
	}

	public boolean insert(MemberDTO dto) {
		boolean check = false;

		String sql = "insert into member values(member_seq.nextval,?,?,?,?,?,?,?)";

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getTel1());
			pstmt.setString(6, dto.getTel2());
			pstmt.setString(7, dto.getTel3());
			if(pstmt.executeUpdate() != 0) {
				check = true;
			}
		} catch(SQLException e) {
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
	}

	public boolean update(MemberDTO dto) {
		boolean check = false;

		String sql = "update member set email=?, tel1=?, tel2=?, tel3=? where no = ?";

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getEmail());
			pstmt.setString(2, dto.getTel1());
			pstmt.setString(3, dto.getTel2());
			pstmt.setString(4, dto.getTel3());
			pstmt.setInt(5, dto.getNo());
			if(pstmt.executeUpdate() != 0) {
				check = true;
			}
		} catch(SQLException e) {
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
	}
	
	public boolean delete(int no) {
		boolean check = false;

		String sql = "delete member where no=?";

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			if(pstmt.executeUpdate() != 0) {
				check = true;
			}
		} catch(SQLException e) {
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
	}
	
	
	
	}
















