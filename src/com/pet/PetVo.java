package com.pet;

import java.sql.Date;

//id, p_name, p_sex, p_size, p_birthdate
public class PetVo {
	private String id;
	private String p_name;
	private String p_sex;
	private String p_size;
	private Date p_birthdate;
	public PetVo() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	
}
