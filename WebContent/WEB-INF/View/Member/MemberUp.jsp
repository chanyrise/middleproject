<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="font-size: 2.5em; margin: 200px 200px;">
<% String url = request.getContextPath(); %>

	<form action="update.do" method="get">

		id : <input type="text" readonly="readonly"name="id" value="${member.getId()}" /> <br />
	 pw : <input type="text"  name="pw" value="${member.getPw()}" /> <br /> 
		n_id :<input type="text" name="n_id" value="${member.getN_id()}" /> <br /> 
		 tel: <input type="text" name="tel" value="${member.getTel()}" /> <br /> 
		sido: <input type="text" name="sido" value="${member.getSido()}" /> <br /> 
		gu: <input type="text" name="gu" value="${member.getGu()}" /> <br /> 
		doro :<input type="text" name="doro" value="${member.getDoro()}" /><br /> 
		상세주소: <input type="text" name="d_juso" value='${member.getD_juso()}' /><br> 
		우편주소: <input type="text" name="postno" value='${member.getPostno()}' /><br> 
		email:<input type="text" name="email" value='${member.getEmail()}' /><br> 
		성별:	<input type="text" name="u_sex" value='${member.getU_sex()}' /><br>
		생년월일: <input type="text" name="u_birthday" value='${member.getU_birthday()}' /><br>
		유저이름: <input type="text" name="u_name" value='${member.getU_name()}' /><br>
		가입일: <input type="text" name="u_enrollday" value='${member.getU_enrollday()}' /><br>
		상태: <input type="text" name="status" value='${member.getStatus()}' /><br>
		권한: <input type="text" name="manage" value='${member.getManage()}' /><br>
		펫수: <input type="text" name="petcount" value='${member.getPetcount()}' /><br>
		친구상태: <input type="text" name="friend" value='${member.getFriend()}' /><br>
		친구id: <input type="text" name="f_id" value='${member.getF_id()}' /><br>
 
		<input type="submit" value="수정하기" /> <input type="reset" value="취소" />
	</form>

</body>
</html>