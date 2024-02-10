package board.dto;

/*
-- 게시판 테이블
create table board(
seq number not null,   			 -- 글번호
id varchar2(30) not null,		 -- 아이디
name varchar2(30) not null,		 -- 이름
subject varchar2(255) not null,	 -- 제목
content varchar2(4000) not null, -- 내용
hit number default 0,			 -- 조회수
logtime date default sysdate	 -- 작성일	
);

create sequence board_seq nocache nocycle;
 */

public class BoardDTO {
	
	private int seq;
	private String id;
	private String name;
	private String subject;
	private String content;
	private int hit;
	private String logtime;
	
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	

	
	
	
	
}
