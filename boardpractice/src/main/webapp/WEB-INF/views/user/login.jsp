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

<i style="font-size: 50px; margin-left: 3%;">로긘</i>

<div style="margin-left: 3%;">
 <form name='frm' method='POST' action='/pwdcheck' class="form-horizontal">
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
    
   
    <button type="submit" class="btn">로규ㅜ인</button> 
    
 
       
  
    </form>
    
  </div>
    

 </body>
</html>