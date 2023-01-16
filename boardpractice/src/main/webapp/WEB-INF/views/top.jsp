<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<DIV class='container_main'> 
  <%-- 화면 상단 메뉴 --%>
  <DIV class='top_img'>
    <DIV class='top_menu_label'><A href='/main'>boardprac</A></DIV>
    <NAV class='top_menu'>
      
      <c:choose>
        <c:when test="${sessionScope.userid != null}"> <%-- 로그인 한 경우 --%>
           ${sessionScope.username }  
           (<span>${sessionScope.userid }</span>)
      <A href='/logout' >Logout</A><span class='top_menu_sep'> </span>      
      <A href='/main'>게시판</A><span class='top_menu_sep'> </span>
        </c:when>
      </c:choose>    
      
    </NAV>
  </DIV>