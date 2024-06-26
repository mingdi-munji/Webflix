<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style type="text/css">
  	body {
margin: 0px;
padding: 0px;
background-color: #343434;
}

h3 {
margin-bottom: 5px;
margin-left: 15px;
color: white;
}

li {
color: white;
margin-left: 10px;
text-decoration: none;
}

li > a {
color: white;
text-decoration: none;
}

li > a:hover {
text-decoration: underline;
}

ul {
padding-left: 20px;
margin: 0px;
}

li {
padding: 2px;
}

.nav_none_list {
list-style-type: none;
padding: 0px;
margin: 0px;
}

.nav_background {
background-color: #1E1E1E;
width: 200px;
padding: 10px;
margin: 15px;
margin-top: 5px;
}

#search {
width: 130pt;
height: 20pt;
font-size: large;
}

#title {
margin-left: 35pt;
color: #E50914;
text-shadow: 3px 3px rgba(0, 0, 0, 0.25);
font-weight: 900;
font-size: 45pt;
}

h1 {
display: inline-block;
}

form {
display: inline-block;
float: right;
margin-right: 20pt;
}

form a {
display: inline-block;
float: right;
}

#login_signin {
color: white;
margin-top: 50pt;
}

a {
color: white;
text-decoration: none;
}

#top {
color: white;
margin-left: 10pt;
}

table, table td {
border-style: solid;
border-color: #1E1E1E;
border-width: 20pt;
border-collapse: collapse;
text-align: center;
color: white;
}


#movietalk > tbody > tr > td {
border-width: 2pt;
border-color: #1E1E1E;
background-color: #E50914;
}

main {
display: flex;
}

nav {
flex: 0 0 220px; /* 좌측에 고정된 넓이 */
margin: 15px;
}

#moviepostertalk {
flex: 1; /* 남은 공간을 차지 */
margin: 15px;
}

#poster, #talk {
margin-bottom: 20px;
}

#movieposter, #movietalk {
background-color: #1E1E1E;
width: 100%;
}
  </style>
</head>
<body>
  <header>
  <h1 id="title">WEBFLIX</h1>
	<form>
		<div id="login_signin">
		<c:if test="${sessionScope.isLoggedIn}">
		    <!-- 로그인 -->
		    <a href="/webflix/logout">로그아웃</a>
		    <a>&nbsp; | &nbsp;</a>
		    <a href="myPage.jsp">정보수정</a>
		</c:if>
		<c:if test="${not sessionScope.isLoggedIn}">
		    <!-- 비로그인 -->
		    <a href="/webflix/login-form">로그인</a>
		    <a>&nbsp; | &nbsp;</a>
		    <a href="/webflix/register">회원가입</a>
		</c:if>
			<br>
		</div>
    </form>
		<input id="search" placeholder=" 검색">
		</div>

  </header>
  <main>
    <nav>
      <h3>게시판 목록</h3>
      <div class="nav_background">
        <ul class="nav_none_list">
          <li>
            <a href="">전체게시판</a>
          </li>
          <li>
            <a href="">인기게시판</a>
          </li>
          <li>
            <a href="">공지사항</a>
          </li>
          <li>
            <a href="">영화수다(자유게시판)</a>
          </li>
          <li>
            <a href="">일반수다(자유게시판)</a>
          </li>
          <li>
            <a href="">ID공유</a>
          </li>
          <li>
            <a href="">넷플릭스 정보/소식</a>
          </li>
        </ul>
      </div>
      
      <h3>영화목록</h3>
      <div class="nav_background">
        <ul  class="nav_none_list">

          <li style="list-style-type: none;">
            <a href="">전체영화</a>
          </li>

          <li style="list-style-type: none;">
            장르별
            <ul>
              <li>
                <a href="">액션</a>
              </li>
              <li>
                <a href="">범죄</a>
              </li>
              <li>
                <a href="">SF(공상과학)</a>
              </li>
              <li>
                <a href="">코미디</a>
              </li>
              <li>
                <a href="">로맨스</a>
              </li>
              <li>
                <a href="">멜로</a>
              </li>
              <li>
                <a href="">스릴러</a>
              </li>
              <li>
                <a href="">공포</a>
              </li>
              <li>
                <a href="">전쟁</a>
              </li>
              <li>
                <a href="">스포츠</a>
              </li>
              <li>
                <a href="">판타지</a>
              </li>
              <li>
                <a href="">뮤지컬</a>
              </li>
            </ul>
          </li>
        
          <li style="list-style-type: none;">
            출현배우
            <ul>
              <li><a href="">이하늬</a></li>
              <li><a href="">정우성</a></li>
              <li><a href="">황정민</a></li>
              <li><a href="">류준열</a></li>
              <li><a href="">임시완</a></li>
              <li><a href="">정해인</a></li>
              <li><a href="">박서준</a></li>
              <li><a href="">김태리</a></li>
              <li><a href="">고윤정</a></li>
              <li><a href="">공효진</a></li>
              <li><a href="">김윤석</a></li>
              <li><a href="">이병헌</a></li>
              <li><a href="">이영애</a></li>
              <li><a href="">김혜수</a></li>
              <li><a href="">송하윤</a></li>
              <li><a href="">이제훈</a></li>
              <li><a href="">서인국</a></li>
              <li><a href="">이정재</a></li>
              <li><a href="">한효주</a></li>
              <li><a href="">조이현</a></li>
              <li><a href="">조인성</a></li>
              <li><a href="">박보영</a></li>
              <li><a href="">이성민</a></li>
              <li><a href="">이이경</a></li>
              <li><a href="">고민시</a></li>
              <li><a href="">김남길</a></li>
              <li><a href="">정다은</a></li>
              <li><a href="">마동석</a></li>
              <li><a href="">이종석</a></li>
              <li><a href="">지승현</a></li>
              <li><a href="">송강호</a></li>
              <li><a href="">설경구</a></li>
            </ul>
          </li>
        
          <li style="list-style-type: none;">
            연출감독
            <ul>
              <li><a href="">봉준호</a></li>
              <li><a href="">박찬욱</a></li>
              <li><a href="">이병헌</a></li>
              <li><a href="">류승완</a></li>
              <li><a href="">최동훈</a></li>
              <li><a href="">장재현</a></li>
              <li><a href="">연상호</a></li>
            </ul>
          </li>
        
        </ul>
      </div>
    </nav>
    <div id="moviepostertalk">
      <section id="poster">
        <h3 id="top">TOP8</h3>
        <table id="movieposter">
            <tr>
                <td><h1>${indexName}</h1><img src="../../resources/images/하이큐.jpg" width="267pt" height="385pt"></td>
                <td><img src="../../resources/images/하이큐.jpg" width="267pt" height="385pt"></td>
                <td><img src="../../resources/images/그녀가죽었다.jpg" width="267pt" height="385pt"></td>
                <td><img src="../../resources/images/퓨리오사.jpg" width="267pt" height="385pt"></td>
            </tr>
            <tr>
                <td><img src="../../resources/images/청춘18.jpg" width="267pt" height="385pt"></td>
                <td><img src="../../resources/images/설계자.jpg" width="267pt" height="385pt"></td>
                <td><img src="../../resources/images/혹성탈출.jpg" width="267pt" height="385pt"></td>
                <td><img src="../../resources/images/가필드.jpg" width="267pt" height="385pt"></td></tr>
        </table>
      </section>
      <section id="talk">
        <h3>영화수다(자유게시판)</h3>
        <table id="movietalk">
          <thead>
              <tr>
                  <th>게시 순서</th>
                  <th>제목</th>
                  <th>게시자</th>
                  <th>게시날짜</th>
                  <th>조회수</th>
                  <th>좋아요수</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td>1</td>
                  <td>${userId}</td>
                  <td>${password} </td>
                  <td>24.05.10</td>
                  <td>1</td>
                  <td>1</td>
              </tr>
              <tr>
                  <td>2</td>
                  <td>범죄도시4 재밌다범죄도시4 재밌다범죄도시4 재밌다</td>
                  <td>마동석12</td>
                  <td>24.05.11</td>
                  <td>1</td>
                  <td>1</td>
              </tr>
              <tr>
                <td>2</td>
                <td>범죄도시4 재밌다범죄도시4 재밌다범죄도시4 재밌다</td>
                <td>마동석12</td>
                <td>24.05.11</td>
                <td>1</td>
                <td>1</td>
              </tr>
              <tr>
                <td>2</td>
                <td>범죄도시4 재밌다범죄도시4 재밌다범죄도시4 재밌다</td>
                <td>마동석12</td>
                <td>24.05.11</td>
                <td>1</td>
                <td>1</td>
              </tr>
              <tr>
                <td>2</td>
                <td>범죄도시4 재밌다범죄도시4 재밌다범죄도시4 재밌다</td>
                <td>마동석12</td>
                <td>24.05.11</td>
                <td>1</td>
                <td>1</td>
              </tr>
              <tr>
                <td>2</td>
                <td>범죄도시4 재밌다범죄도시4 재밌다범죄도시4 재밌다</td>
                <td>마동석12</td>
                <td>24.05.11</td>
                <td>1</td>
                <td>1</td>
              </tr>
          </tbody>
        </table>
      </section>
    </div>
  </main>
</body>
</html>