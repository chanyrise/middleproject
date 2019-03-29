package com.pet;

import java.sql.Date;

public class PetVo {
	
	private String p_name;
	private String p_sex;
	private String p_size;
	private Date p_birthdate;
	public PetVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PetVo(String p_name, String p_sex, String size, Date p_birthdate) {
		super();
		this.p_name = p_name;
		this.p_sex = p_sex;
		this.p_size = size;
		this.p_birthdate = p_birthdate;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_sex() {
		return p_sex;
	}
	public void setP_sex(String p_sex) {
		this.p_sex = p_sex;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public Date getP_birthdate() {
		return p_birthdate;
	}
	public void setP_birthdate(Date p_birthdate) {
		this.p_birthdate = p_birthdate;
	}
	@Override
	public String toString() {
		return "PetVo [p_name=" + p_name + ", p_sex=" + p_sex + ", p_size=" + p_size + ", p_birthdate=" + p_birthdate + "]";
	}
	

	
	
}
