package com.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.member.biz.MemberBiz;
import com.member.vo.MemberVo;
import com.pet.PetVo;


@Controller
public class MemberController {

	@Autowired
	MemberBiz memberbiz;

	// 1.전체출력
	@RequestMapping("/select.do")
	public String my_select(Model m) {
		List<MemberVo> all = memberbiz.getAll();
		m.addAttribute("all", all);
		return "/WEB-INF/View/Member/Memberlist.jsp";
	}
	
//	@RequestParam("del_name")
	@RequestMapping("/delete.do")
	public String my_delete(@RequestParam("del_name")String del_name) {
		int res = memberbiz.getDelete(del_name);
		if (res > 0)
			return "/select.do";
		return "";
	}


	
	@RequestMapping(value="/insert.do" ,method = RequestMethod.POST)
	public String MyInsert(@ModelAttribute("memberVo") MemberVo memberVo) {
		
		
		
		int res = memberbiz.getInsert(memberVo);
		
		return "/WEB-INF/View/Member/test.jsp";
	}
	
	
	@RequestMapping(value="/update.do" , method = RequestMethod.POST)
	public String MyUpdate(@ModelAttribute("member")MemberVo memberVo) {
	
		System.out.println(memberVo.getId());
		int r = memberbiz.getUpdate(memberVo);
		return "/select.do";

	}
	
//	@RequestMapping(value="/update.do", method = RequestMethod.POST)
//	public ModelAndView MyUpdate(@ModelAttribute MemberVo memberVo) {
//		System.out.println("컨트롤러 ... " + memberVo.getId());
//		System.out.println("컨트롤러 ... " + memberVo);
//		
//		int r = memberbiz.getUpdate(memberVo);
//		System.out.println("res : " + r);
//		
//		ModelAndView mav = new ModelAndView("/WEB-INF/View/Member/test.jsp", "res", r);
//		return mav;
//
//	}
	
	
//		@RequestMapping(value="/find.do", method = RequestMethod.GET)
//		public String MyFind(@RequestParam("id") String id, Model model) {
//			
//			String r = memberbiz.getFind(id);
//			model.addAttribute("member",r);
//			
//			return "/WEB-INF/View/Member/MemberUp.jsp";
//
//		}
		
		
	@RequestMapping(value="/find.do", method = RequestMethod.GET)
	public ModelAndView MyFind(@RequestParam("id") String id) {
		MemberVo vo = new MemberVo();
		MemberVo vo1 = new MemberVo();
		vo.setId(id);
		
		vo1 = memberbiz.getFind(vo);
		
		ModelAndView mav = new ModelAndView("/WEB-INF/View/Member/MemberUp.jsp", "member", vo1);
		
		return mav;

	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public ModelAndView MyLogin(@RequestParam(name="id") String id,
			@RequestParam(name="pw")String pw, HttpServletRequest  req) {
		
		System.out.println(id);
		System.out.println(pw);
		MemberVo r = memberbiz.getLogin(id,pw);
		 HttpSession usersession = req.getSession();
	      usersession.setAttribute("userinfo", r);
	      ModelAndView mav = new ModelAndView("/WEB-INF/View/Member/login.jsp");
	      return mav;

}
	
	@RequestMapping(value="/logout.do")
	  public ModelAndView MyLogout(HttpServletRequest req) {
	      System.out.println("로그아웃");
	      req.getSession().invalidate();
	      return new ModelAndView("/WEB-INF/View/Member/SignUp.jsp");
	   }
	
	
	@RequestMapping(value="/id.do")
	public String MyId(@ModelAttribute("member") MemberVo memberVo) {
		System.out.println(memberVo.getEmail());
		
		MemberVo r = memberbiz.getId(memberVo);
		return "";
	}
	
	@RequestMapping(value="/pw.do")
	public String MyPw(@ModelAttribute("member") MemberVo memberVo) {
		System.out.println(memberVo.getId());
		
	//	MemberVo r = memberbiz.getLog(memberVo);
		return "";
	}
	@RequestMapping("/gosignup.do")
	public String goSignup() {
		
		return "/WEB-INF/View/Member/SignUp.jsp";
		//return "/WEB-INF/View/Member/insertTest.jsp";
	}
	
	
}
