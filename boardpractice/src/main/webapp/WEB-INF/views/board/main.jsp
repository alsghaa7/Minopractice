<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.project.board.BoardDto" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>board</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" user-scalable=no>
  <meta name="format-detection" content="telephone=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="../css/orgchart.css">
  <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<jsp:include page="../top.jsp" flush='false' />

  <TABLE class='table table-striped' style="border:1px solid black;margin: 50px auto auto 20px;">
    <colgroup>
      <col style='width: 10%;'/>
      <col style='width: 10%;'/>
      <col style='width: 20%;'/>
      <col style='width: 10%;'/>  
    </colgroup>
   
    <thead>  
    <TR>
      <TH class="th_bs" style='width: 10%;'>번호</TH>
      <TH class="th_bs" style='width: 10%;'>제목</TH>
       <TH class="th_bs" style='width: 10%;'>작성자</TH>


    </TR>
    </thead>
    
    <tbody>
  <TR>
    <c:forEach var="boardDto" items="${list}">
      <c:set var="boardno" value="${boardDto.boardno }" />
     <TD class="td_bs" style="text-align:center"><a href="/boarddetail?boardno=${boardDto.boardno}">${boardDto.boardno}</a></TD>
      <TD class="td_bs" style="text-align:center">${boardDto.boardtitle}</TD>
      <TD class="td_bs" style="text-align:center">${boardDto.username}</TD>
      </TR>   
    </c:forEach> 
    </tbody>
   
  </TABLE>
<button><a href='/write'>작성</a></button>
</body>
</html>