<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기 </title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/signup.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript"></script>
</head>
<body>
<form name="MemberMatchPwdForm" onsubmit="return false;" action="/member/matchid.do" method="post">

	
	
		<div id="searchWrap">
			
				
				
					<div class="popHeaderWrap">
						<h1 class="popTitle">
							<span>아이디 찾기</span>
						</h1>
						<span class="btnClose">
							<a style="cursor:pointer;">닫기</a>
						</span>
					</div>
				
			
			<div class="contentsWrap">
				<div class="searchTab">
					<ul>
						<li class="current">
							<a href="javascript:egsIncorp.sendEventEgs( 'id_search', 'tap_find_id' ); javascript:changeTab('/member/matchid.do?_method=initialPopUp');">아이디 찾기</a>
						</li>
						<li>
							<a href="javascript:egsIncorp.sendEventEgs( 'id_search', 'tap_find_pw' ); javascript:changeTab('/member/matchpwd.do?_method=initialPopUp');">비밀번호 찾기</a>
						</li>
					</ul>
				</div>
				<div class="idsearchWrap">
					<div class="notiArea">
						<span>아이디를 찾을 방법을 선택해주세요.</span>
					</div>
					<div class="searchType">
						<ul>
							<li class="typeList">
								<div class="title">
									<button type="button">등록된 휴대폰번호로 찾기</button>
								</div>
								<div class="inputEnter">
									<div class="inputBox">
										<div class="styleInput">
											<input name="memNm" class="iInput" id="memNm1" type="text" placeholder="이름">
											<span class="delBtn" id="conClear" style="display: none;"></span>
										</div>
										<div class="styleInput">
											<input name="inputHp" class="iInput" id="inputHp" type="text" placeholder="휴대폰번호 (-없이 입력)" inputmode="numeric">
											<span class="delBtn" id="conClear" style="display: none;"></span>
											<p class="error" style="display:none">오류메세지를 노출합니다.</p>
										</div>
									</div>
									<div class="btnArea">
										<button class="btnRed" onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_hp'); javascript:chkMemInfo(); return false;" type="submit">확인</button>
									</div>
								</div>
							</li>
							<li class="typeList">
								<div class="title">
									<button type="button">등록된 이메일로 찾기</button>
								</div>
								<div class="inputEnter">
									<div class="inputBox">
										<div class="styleInput">
											<input name="u_name" class="iInput" id="memNm2" type="text" placeholder="이름">
											<span class="delBtn" id="conClear" style="display: none;"></span>
										</div>
										<div class="emailInput">
											<div class="styleInput">
												<input name="memEmail1" class="iInput" id="memEmail1" type="text" placeholder="이메일">
												<span class="delBtn" id="conClear" style="display: none;"></span>
											</div>
										<button class="btnRed" onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_hp'); javascript:chkMemInfo(); return false;" type="submit">확인</button>
							</li>
						</ul>
					</div>
				</div>
			</div>
				
			
				<div class="bannerWrap">
					<div class="banner">
						<script src="https://addb.interpark.com/RealMedia/ads/adstream_jx.ads/www.interpark.com/login_password/544x70@x01"></script>
					</div>
				</div>
			
		</div>
		<script src="/static/js/main/search.js"></script>
	

	

</form>
</body>
</html>