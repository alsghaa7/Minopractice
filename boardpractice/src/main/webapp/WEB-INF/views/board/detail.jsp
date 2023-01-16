<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!Doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8"> 
<title>board</title>
</head>
 <body>
 <jsp:include page="../top.jsp" flush='false' />
 <form name='form' method='POST' action='/boardupdate' class="form-horizontal">
  <input type="hidden" name="boardno" value="${boardDto.boardno }"/>
  <input type="hidden" name="userid" value="${boardDto.userid }"/>
  
	<div class="form-group">
      <label for="userid" class="col-md-2 control-label" style='font-size: 0.9em;'>작성자</label>    
      <div class="col-md-10">
       <input readonly type="text" name="" value="${userDto.username}" />
      </div>
    </div>  
    <div class="form-group">
      <label for="boardtitle" class="col-md-2 control-label" style='font-size: 0.9em;'>제목</label>    
      <div class="col-md-10">
       <input  type="text" name="boardtitle" value="${boardDto.boardtitle}" />
      </div>
    </div>   
 <div class="form-group">
      <label for="boardcnt" class="col-md-2 control-label" style='font-size: 0.9em;'>내용</label>    
      <div class="col-md-10">
       <input  type="text" name="boardcnt" value="${boardDto.boardcnt}" />
      </div>
    </div> 

   
     <button type='submit' class='btn'>수정</button>
    </form>
    <form name='form' method='POST' action='/boarddelete?boardno=${boardDto.boardno}' class="form-horizontal">
     <button type='submit' class='btn'>삭제</button>
    </form>
   
    

 </body>
</html>