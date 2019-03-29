package com.member.vo;

import java.sql.Date;

public class MemberVo {

	private String id;
	private String pw;
	private String u_name;
	private String n_id;
	private String u_birthday;
	private int u_sex;
	private String postno;
	private String doro;
	private String d_juso;
	private String sido;
	private String gu;
	private String email;
	private String tel;
	private Date u_enrollday;
	private String status;
	private String manage;
	private int petcount;
	private String friend;
	private String f_id;
	
	public MemberVo() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getN_id() {
		return n_id;
	}

	public void setN_id(String n_id) {
		this.n_id = n_id;
	}

	public String getU_birthday() {
		return u_birthday;
	}

	public void setU_birthday(String u_birthday) {
		this.u_birthday = u_birthday;
	}

	public int getU_sex() {
		return u_sex;
	}

	public void setU_sex(int u_sex) {
		this.u_sex = u_sex;
	}

	public String getPostno() {
		return postno;
	}

	public void setPostno(String postno) {
		this.postno = postno;
	}

	public String getDoro() {
		return doro;
	}

	public void setDoro(String doro) {
		this.doro = doro;
	}

	public String getD_juso() {
		return d_juso;
	}

	public void setD_juso(String d_juso) {
		this.d_juso = d_juso;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGu() {
		return gu;
	}

	public void setGu(String gu) {
		this.gu = gu;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getU_enrollday() {
		return u_enrollday;
	}

	public void setU_enrollday(Date u_enrollday) {
		this.u_enrollday = u_enrollday;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getManage() {
		return manage;
	}

	public void setManage(String manage) {
		this.manage = manage;
	}

	public int getPetcount() {
		return petcount;
	}

	public void setPetcount(int petcount) {
		this.petcount = petcount;
	}

	public String getFriend() {
		return friend;
	}

	public void setFriend(String friend) {
		this.friend = friend;
	}

	public String getF_id() {
		return f_id;
	}

	public void setF_id(String f_id) {
		this.f_id = f_id;
	}

	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", pw=" + pw + ", u_name=" + u_name + ", n_id=" + n_id + ", u_birthday="
				+ u_birthday + ", u_sex=" + u_sex + ", postno=" + postno + ", doro=" + doro + ", d_juso=" + d_juso
				+ ", sido=" + sido + ", gu=" + gu + ", email=" + email + ", tel=" + tel + ", u_enrollday=" + u_enrollday
				+ ", status=" + status + ", manage=" + manage + ", petcount=" + petcount + ", friend=" + friend
				+ ", f_id=" + f_id + "]";
	}

}
