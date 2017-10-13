<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="/WebClass/js/index.js"></script>
<title>BLog</title>
<style>
body{
  font-family : 'a뉴고딕M';
  background-color: #D0D2D2;
}
.nav-item{
  margin : 0 10px;
}
#container{
  margin-top : 150px;
  padding: 200px 0;
  text-align: center;
  background-color: rgba(255,255,255, 0.3);
}
#nav1{
  background-color:#818383;
}
#content{
  margin : 40px 0 60px;
}
.menubar{
  overflow: hidden;
}
.navi{
  float : left;
  background-color : rgba(255,255,255,0);
  width : 150px; height : 60px;
  font-size : 25px;
  text-align: center;
  line-height: 60px;
  margin : 0 110px;
  border-bottom : 3px double #445658;
}
.btn-secondary{
  color : black;
}
a{
  text-decoration: none !important;
  color : black;
  cursor : default;
}
a:hover{
  color : brown;
}
button[name = "button"]{
  width : 100px; height : 40px;
  background-color: rgba(0,0,0,0);
  border: none;
  font-size : 20px;
  margin-right : 15px;
}
.sign button{
    border-bottom: 3px solid #445658;
}
.sign{
  margin-top : 150px;
    float : right;
}
#dark_bg{
    position: absolute;
    top : 0; left: 0; right: 0;
    height : 100%;
    display: none;
    background: rgba(0,0,0,0.4);
    z-index: 100;
    overflow : hidden;
}#dark_bg2{
    position: absolute;
    top : 0; left: 0; right: 0;
    height : 100%;
    display: none;
    background: rgba(0,0,0,0.4);
    z-index: 100;
    overflow : hidden;
}
#lightbox{
    width: 700px;
    margin: 300px auto; padding : 20px;
    background-color :rgba(255,255,255, 1);
    box-shadow: 0 5px 5px rgba(34, 25,25, 0.4);
    font-family : 'a영고딕L';
}
#lightbox2{
    width: 300px;
    margin: 400px auto; padding : 20px;
    background-color :rgba(255,255,255, 1);
    box-shadow: 0 5px 5px rgba(34, 25,25, 0.4);
    font-family : 'a영고딕L';
}
#joinbox{
    /* background-color: rgba(151, 169, 178, 0.2); */
    background-color : white;
}#form2{
    margin : 0px 140px;
}
#form2 input{
    margin-left : 20px;
    margin-bottom : 20px;
}
#form2 input[type="date"]{
    width : 168px;
}
#loginform{
  padding-left : 30px;
}
#title{
       text-align: center;
       margin-bottom : 20px;
       padding-top : 10px;
       font-size: 30px;
       font-family: 'a타이틀고딕2';
}
input[type = "submit"]{
    background-color:#8f9193;
    width : 65px; height : 30px;
    border : none;
    line-height: 20px;
    font-size : 18px;
    font-family: '나눔스퀘어';
    color : white;
    margin-left : 100px;
}
#signupform input[type = "submit"]{
  margin-left : 0;
}
.inputid{
    text-align: right;
    width : 120px;
    font-size : 18px;
}

</style>
</head>
<body>
<%
String id = request.getParameter("id")==null ? "" : request.getParameter("id"); 
%>
   <nav class="navbar navbar-expand-lg navbar-light" id="nav1">
  <a class="navbar-brand" href="#"><img src="../img/icon.png" alt="" width="50" height="50"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
  </div>
</nav>
  <div class="container" id="container">
    <h1>나만의 블로그</h1>
    <p id="content">
      정말 나만을 위한 블로그 페이지
        </p>
      <div class="menubar">
      <div class="navi">
      <a href="../html/intro.html">나의 소개</a>
      </div>
      <div class="navi">
        <a href="../html/photo.html">사진첩</a>
      </div>
      <div class="navi">
        <a href="../html/dream.html">꿈에 관해</a>
      </div>
      </div>
   
      <div class="sign">
           <%
         String user2 = (String)session.getAttribute("user");
    if(user2==null){
    %>
      <button type="button" name="button" id="signup">로그인</button>
      <button type="button" name="button" id="signin">회원가입</button>
        <% } else{%>
        <form action="/WebClass/bloglogout" method="POST">
        <button type="button" name="button"> <%= user2 + "님" %></button>
	      	<button type="submit" name="button">Sign out</button>
	      	</form>
        <%} %>
    </div>

  </div>
  <!-- 라이트박스 구성 -->
  <div id="dark_bg">
    <div id = "lightbox">
      <div id="title">회원가입</div>
      <div id="form2">
     <form method="POST" id="signupform" action="">
      <div><span class="inputid">성명</span><input type = "text" name="name" required><span id="ckname"></span></div>
      <div><span class="inputid">성별</span>
        <input type="radio" name="gender" value="female">여자
        <input type="radio" name="gender" value="male">남자
        <span id="ckgender"></span>
      </div>
      <div><span class="inputid">이메일</span><input type="email" name="email" required ></div>
      <div><span class="inputid">아이디</span><input type="text" name="id" id="newid"></div>
      <div><span class="inputid">비밀번호</span><input type="password" name="pw" required id="newpw"></div>
      <div><span class="inputid">비밀번호 확인</span><input type="password" name="pwcheck" required id="pwcheck"></div>
      <input type="submit" name="button" value="완료">
        </form>
      </div>
    </div>
  </div>
  <div id="dark_bg2">
    <div id="lightbox2">
      <div class="container">
      <form  action="/WebClass/bloglogin" method="post" id="loginform">
      <input type="text" name="id" placeholder="ID" required id="id" value="<%=id%>"><br>
      <br>
      <input type="text" name="pw2" placeholder="PW" required id="pw"<% if("error".equals(request.getAttribute("msg"))){ %>autofocus<%}%>><br>
      <br>
      <input type="submit" value="로그인">
       </form>
         </div>
    </div>
  </div>
  <!-- 모달 -->
  <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script>
<%-- 로그인이 실패한 경우 처리 추가 --%>
<% if("error".equals(request.getAttribute("msg"))){ %>
	var myModal = $('#myModal');
	myModal.find('.modal-title').text('Login Error');
	myModal.find('.modal-body').text('Invalid username or password');
	myModal.modal();
<% }%>
$('#myModal').on('hidden.bs.modal', function (e) {
	  $('#dark_bg2').show();
	})
</script>
</body>
</html>