<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
  <body>
    <!--<style type="text/css">
      .jumbotron {
        background-image : url('');
        background-size : cover;
        text-shadow : black 0.2em 0.2em 0.2em;
        color :white;
        
        
      }
    </style>-->

    
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
          <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        
        <a class="navbar-brand" href="#">메인 윗단입니다.</a>
        </div>
        <div class="collapse navbar-collapse" id="bootstrap-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">프로젝트1<span class="sr-only"></span></a></li>
            <li><a href="#">조원소개</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
               aria-haspopup="true" aria-expanded="false">목록<span class="caret"></span></a>
               <ul class="dropdown-menu">
                <li><a href="#">1번</a></li>
                <li><a href="#">2번</a></li>
                <li><a href="#">3번</a></li>
               </ul>
            </li>
          </ul>
          <form class="form-login pull-right">
              <h2 class="form-login-heading ">반걸음 접속하기</h2>
              <label for="ID" class="sr-only">ID</label>
              <input type="text" id="login" class="form-control" placeholder="ID" required autofocus>
              <label for="inputPassword" class="sr-only">비밀번호</label>
              <input type="password" id="암호입력" class="form-control" placeholder="password" required>
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="아이디 저장"> 기억하기
                </label>
              </div>
              <button class="btn btn-lg btn-primary btn-block"  type="submit">로그인</button>
              <p>기억이 안나면? <a href="#">여기를 누르세요</a></p>
              <p>처음이세요? <a href="#">회원 가입하기</a></p>
            </form>
        </div>
      </div>
    </nav>





    
    <div class="container">
      <div class="jumbotron">
        <h1 class="text-center">우리 사이트를 소개해보자.</h1>
        <p class="text-center">중간 프로젝트 수행중</p>
        <p class="text-center"><a class="btn btn-primary btn-lg" href="#" role="button">들어가기</a></p>
        </div>
      </div>




      <footer class="footer">
          <p>바닥부분, 디자인 없음</p>
        </footer>

      


      

  </body>
</html>