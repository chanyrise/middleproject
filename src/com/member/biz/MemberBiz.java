package com.member.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.dao.MemberDaoImpl;
import com.member.vo.MemberVo;
@Service
public class MemberBiz {

	@Autowired
	MemberDaoImpl memberDaoImpl;

	public List<MemberVo> getAll() {

		return memberDaoImpl.getAll();
	}

	public int getDelete(String del_name) {

		return memberDaoImpl.getDelete(del_name);
	}

	public int getInsert(MemberVo memberVo) {
		return memberDaoImpl.getInsert(memberVo);
	}

	public MemberVo getFind(MemberVo id) {
		return memberDaoImpl.getFind(id);
	}

	public int getUpdate(MemberVo vo) {
		System.out.println("비즈");
		return memberDaoImpl.getUpdate(vo);
	}
	
	 public MemberVo getLogin(String id, String pw) {
		 MemberVo ue = new MemberVo();
	      ue.setId(id);
	      ue.setPw(pw);
	      return memberDaoImpl.getLogin(ue);
	   }
	 
	 public MemberVo getLogout(MemberVo memberVo) {
		   return memberDaoImpl.getLogout(memberVo);
	   }
	 
	public MemberVo getId(MemberVo memberVo) {
		   return memberDaoImpl.getIdcheck(memberVo);
	   }
	 
	 public MemberVo getPw(MemberVo memberVo) {
		   return memberDaoImpl.getPwcheck(memberVo);
	   }

}
