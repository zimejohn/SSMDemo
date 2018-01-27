<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
    $(function(){
    	 $(".delete").click(function(){
          var name=$(this).parent().parent().find("td:eq(1)").text();
          var flag=confirm("确定要删除"+name+"吗？");
       	  var href=$(this).attr("href");
       	  if(flag){
       		$("form").attr("action",href).submit();
       	  }
       	  return false;
         })
        
    });
</script>
</head>
<body>
显示所有学生信息
<form action="" method="POST">
   <input type="hidden" name="_method" value="DELETE">
</form>

<c:if test="${ empty  requestScope.students }">
   没有任何学生信息
</c:if>
<c:if test="${ !empty  requestScope.students }">
      <table  border="1" cellpadding="10px" cellspacing="0">
         <tr>
             <th>ID</th>
             <th>Name</th>
             <th>Gender</th>
             <th>Email</th>
             <th>Phone</th>
             <th>Birth</th>
             <th>RegTime</th>
             <th>Major</th>
             <th>Edit</th>
             <th>Delete</th>
         </tr>
         <c:forEach items="${requestScope.students}"  var="stu">
         <tr>
             <td>${stu.id }</td>
             <td>${stu.name }</td>
             <td>${stu.gender }</td>
             <td>${stu.email }</td>
             <td>${stu.phone }</td>
             <td><fmt:formatDate value="${stu.birth }" pattern="yyyy-MM-dd"/> </td>
             <td><fmt:formatDate value="${stu.regTime }" pattern="yyyy-MM-dd hh:mm:ss"/> </td>
             <td>${stu.major.majorName }</td>
             <td><a href="stu/${stu.id }">Edit</a></td>
             <td><a href="stu/${stu.id }" class="delete">Delete</a></td>
         </tr>
         </c:forEach>
      </table>
</c:if>
<br><br>
<a href="stu">添加学生</a>
</body>
</html>