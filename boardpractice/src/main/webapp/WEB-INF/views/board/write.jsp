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
<i style="font-size: 50px; margin-left: 3%;">게시글 작성</i>

<div style="margin-left: 3%;">
 <form name='frm' method='POST' action='/boardwrite' class="form-horizontal">
 <input type="hidden" name="userid" value="${sessionScope.userid }"/>
	 <div class="form-group">
	      <label for="userid" class="col-md-2 control-label" style='font-size: 0.9em;'>작성자</label>    
	      <div class="col-md-10">
	
	        <input readonly type='text' class="form-control" name='' id='userid' value='${sessionScope.username }' required="required" 
	        						style='width: 30%;' placeholder="" autofocus="autofocus">
      </div>
    </div>  
	<div class="form-group">
      <label for="boardtitle" class="col-md-2 control-label" style='font-size: 0.9em;'>제목</label>    
      <div class="col-md-10">

        <input type='text' class="form-control" name='boardtitle' id='boardtitle' value='' required="required" 
        						style='width: 30%;' placeholder="제목을 입력하세요" autofocus="autofocus">
      </div>
    </div>   
                
     <div class="form-group">
      <label for="boardcnt" class="col-md-2 control-label" style='font-size: 0.9em;'>내용</label>    
      <div class="col-md-10">
        <input type='text' class="form-control" name='boardcnt' id='boardcnt' value='' required="required" 
        						style='width: 30%;' placeholder="내용을 입력하세요">
      </div>
    </div> 
    
    
   
    <button type="submit" class="btn">등록</button> 
    
 
       
  
    </form>
    
  </div>
    

 </body>
</html>