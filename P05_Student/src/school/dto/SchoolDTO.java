

package school.dto;

/*
create table school(
name varchar2(20) not null,   -- 이름
value varchar2(20),           -- 학생 - 학번, 교수 - 과목, 행정 - 부서명
code number                   -- 선택 code : 1.학생  2.교수  3.행정
);

*/

public class SchoolDTO {

	private String name;
	private String value;
	private int code;
	
	public SchoolDTO() {}
	
	public SchoolDTO(String name, String value, int code) {
		this.name = name;
		this.value = value;
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
	
	
	
}


