

package dbtest.dto;

import java.sql.Date;

public class DBtestDTO {

	private String name;
	private int age;
	private double height;
	private Date date;
	
	public DBtestDTO() {
		
	}
	
	public DBtestDTO(String name, int age, double height) {
		this.name = name;
		this.age = age;
		this.height = height;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	

}
