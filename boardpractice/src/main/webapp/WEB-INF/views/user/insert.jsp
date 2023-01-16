<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!Doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8"> 
<title>user</title>
</head>
 <body>

<i style="font-size: 50px; margin-left: 3%;">회원등록</i>

<div style="margin-left: 3%;">
 <form name='frm' method='POST' action='/insertok' class="form-horizontal">
	<div class="form-group">
      <label for="userid" class="col-md-2 control-label" style='font-size: 0.9em;'>아이디*</label>    
      <div class="col-md-10">

        <input type='text' class="form-control" name='userid' id='userid' value='' required="required" style='width: 30%;' placeholder="아이디" autofocus="autofocus">
      </div>
    </div>   
                
     <div class="form-group">
      <label for="pwd" class="col-md-2 control-label" style='font-size: 0.9em;'>패스워드*</label>    
      <div class="col-md-10">
        <input type='text' class="form-control" name='pwd' id='pwd' value='' required="required" style='width: 30%;' placeholder="패스워드">
      </div>
    </div> 
    
    <div class="form-group">
      <label for="username" class="col-md-2 control-label" style='font-size: 0.9em;'>이름*</label>   
      
      <div class="col-md-10">
        <input type='text' class="form-control" name='username' id='username' 
                   value='' required="required" style='width: 30%;' placeholder="이름">
      </div>
    </div>   

    <div class="form-group">
      <label for="usertel" class="col-md-2 control-label" style='font-size: 0.9em;'>전화번호*</label>    
      <div class="col-md-10">

        <input type='text' class="form-control" name='usertel' id='usertel' 
                   value='' required="required" style='width: 30%;' placeholder="전화번호"> 예) 010-0000-0000

      </div>
    </div>  
      
    
     <div class="form-group">
      <label for="userage" class="col-md-2 control-label" style='font-size: 0.9em;'>나이*</label>    
      <div class="col-md-10">

        <input type='text' class="form-control" name='userage' id='userage' value='' required="required" style='width: 30%;' placeholder="나이">

      </div>
    </div>   
   
    <button type="submit" class="btn">등록</button> 
    
 
       
  
    </form>
    
  </div>
    

 </body>
</html>