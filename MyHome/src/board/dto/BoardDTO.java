package board.dto;

import java.sql.Date;

/*
CREATE TABLE board (
		  seq NUMBER NOT NULL, -- 글번호
		  id  VARCHAR2(30) NOT NULL,    -- 글쓴이 id
		  name VARCHAR2(30) NOT NULL,   -- 글쓴이 닉넴
		  title VARCHAR2(255) NOT NULL, -- 글제목
		  content VARCHAR2(4000) NOT NULL, -- 글본문
		  filename varchar2(255),
		  hit NUMBER DEFAULT 0,  -- 조회수
		  logtime DATE DEFAULT SYSDATE -- 작성시간
		); 
*/

public class BoardDTO {

	private int seq;
	private String id;
	private String name;
	private String title;
	private String content;
	private String filename;
	private int hit;
	private Date logtime;
	
	public BoardDTO() {
		super();
	}

	public BoardDTO(int seq, String id, String name, String title, String content, String filename, int hit,
			Date logtime) {
		super();
		this.seq = seq;
		this.id = id;
		this.name = name;
		this.title = title;
		this.content = content;
		this.filename = filename;
		this.hit = hit;
		this.logtime = logtime;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Date getLogtime() {
		return logtime;
	}

	public void setLogtime(Date logtime) {
		this.logtime = logtime;
	}
	
	
	
}
