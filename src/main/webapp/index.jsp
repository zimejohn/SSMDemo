<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="${pageContext.request.contextPath }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

<!-- 学生修改的模态框 -->
<div class="modal fade" id="stuUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">学生修改</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-10">
		      <input type="text" name="name" class="form-control" id="stuName_update_input" placeholder="姜洋,Jiangyang">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">性别</label>
		    <div class="col-sm-10">
		      <label class="radio-inline">
				  <input type="radio" name="gender" id="gender1_update_input" value="男" checked="checked"> 男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender2_update_input" value="女"> 女
				</label>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input type="text" name="email" class="form-control" id="email_update_input" placeholder="email@zime.edu.com">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">电话</label>
		    <div class="col-sm-10">
		      <input type="text" name="phone" class="form-control" id="phone_update_input" placeholder="13577887788,0571-87772629">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">出生日期</label>
		    <div class="col-sm-10">
		      <input type="text" name="birth" class="form-control" id="birth_update_input" placeholder="1998-9-15">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">注册日期</label>
		    <div class="col-sm-10">
		      <input type="text" name="regTime" class="form-control" id="regTime_update_input" placeholder="2015-9-1 13:24:35">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">majorName</label>
		    <div class="col-sm-4">
		    	<!-- 专业提交专业id即可 -->
		      <select class="form-control" name="majorId">
		      </select>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="stu_update_btn">修改</button>
      </div>
    </div>
  </div>
</div>

<!-- 学生添加的模态框 -->
<div class="modal fade" id="stuAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">学生添加</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-10">
		      <input type="text" name="name" class="form-control" id="stuName_add_input" placeholder="姜洋,Jiangyang">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">性别</label>
		    <div class="col-sm-10">
		      <label class="radio-inline">
				  <input type="radio" name="gender" id="gender1_add_input" value="男" checked="checked"> 男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender2_add_input" value="女"> 女
				</label>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input type="text" name="email" class="form-control" id="email_add_input" placeholder="email@zime.edu.com">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">电话</label>
		    <div class="col-sm-10">
		      <input type="text" name="phone" class="form-control" id="phone_add_input" placeholder="13577887788,0571-87772629">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">出生日期</label>
		    <div class="col-sm-10">
		      <input type="text" name="birth" class="form-control" id="birth_add_input" placeholder="1998-9-15">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">注册日期</label>
		    <div class="col-sm-10">
		      <input type="text" name="regTime" class="form-control" id="regTime_add_input" placeholder="2015-9-1">
		      <span class="help-block"></span>
		    </div>
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">majorName</label>
		    <div class="col-sm-4">
		    	<!-- 专业提交专业id即可 -->
		      <select class="form-control" name="majorId">
		      </select>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="stu_save_btn">保存</button>
      </div>
    </div>
  </div>
</div>


	<div class="container">
		<!-- Title -->
		<div class="row">
			<div class="col-md-12">
				<h2>显示所有学生信息</h2>
			</div>
		</div>
		<!-- Insert  Delete  Button -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button type="button" class="btn btn-primary" id="stu_add_modal_btn">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					新增
				</button>
				<button type="button" class="btn btn-danger" id="stu_del_modal_btn">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					删除
				</button>
			</div>
		</div>
		<!-- Student Data -->
		<div class="row">
			<table class="table table-hover" id="stu_table">
				<thead>
					<tr>
					    <th><input type="checkbox" id="check_All"></th>
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
				</thead>
				<tbody>

				</tbody>

			</table>
		</div>
		<!-- Paging Info -->
		<div class="row">
			<div class="col-md-6" id="page_info_area"></div>
			<div class="col-md-6" id="page_nav_area"></div>
		</div>
	</div>

	<script type="text/javascript">
	  var totalPage,currPage;
	
		$(function() {
			showPage(1);
		});

		function showPage(n) {
			$.ajax({
				url : "${pageContext.request.contextPath }/students",
				data : "pn=" + n,
				type : "GET",
				success : function(result) {
					//显示学生数据
					build_stu_table(result);
					//显示分页信息
					build_page_info(result);
					//显示页面导航信息
					build_page_nav(result);
				}

			});
		}

		function build_stu_table(result) {
			$("#stu_table tbody").empty();
			var students = result.data.page.list;
			$.each(students, function(index, item) {
				var checkBoxTd= $("<td><input type='checkbox' class='check_item'></td>");
				var idTd = $("<td></td>").append(item.id);
				var nameTd = $("<td></td>").append(item.name);
				var genderTd = $("<td></td>").append(item.gender);
				var emailTd = $("<td></td>").append(item.email);
				var phoneTd = $("<td></td>").append(item.phone);
				var birthTd = $("<td></td>").append(
						new Date(item.birth).toLocaleDateString());
				var regTimeTd = $("<td></td>").append(
						new Date(item.regTime).toLocaleDateString());
				var majorNameTd = $("<td></td>").append(item.major.majorName);

				/* <button type="button" class="btn btn-primary">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				编辑
				</button>
				<button type="button" class="btn btn-danger">
				<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				删除
				</button> */
				var editBtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm edit-btn").append(
						$("<span></span>").addClass(
								"glyphicon glyphicon-pencil")).append("编辑");
				editBtn.attr("edit-stuId",item.id);
				var deleteBtn = $("<button></button>").addClass(
						"btn btn-danger btn-sm delete-btn").append(
						$("<span></span>")
								.addClass("glyphicon glyphicon-trash")).append(
						"删除");
				deleteBtn.attr("delete-stuId",item.id);

				var editBtnTd = $("<td></td>").append(editBtn);
				var deleteBtnTd = $("<td></td>").append(deleteBtn);

				$("<tr></tr>").append(checkBoxTd).append(idTd).append(nameTd).append(genderTd)
						.append(emailTd).append(phoneTd).append(birthTd)
						.append(regTimeTd).append(majorNameTd)
						.append(editBtnTd).append(deleteBtnTd).appendTo(
								"#stu_table tbody");

			});

		}
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append(
					"当前第" + result.data.page.pageNum + "页/总共"
							+ result.data.page.pages + "页，学生总数为"
							+ result.data.page.total);
			totalPage=result.data.page.total;
			currPage=result.data.page.pageNum;
		}
		function build_page_nav(result) {
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");

			var firstPageLi = $("<li></li>").append(
					$("<a></a>").append("首页").attr("href", "#"));
			var previousPageLi = $("<li></li>").append(
					$("<a></a>").append("&laquo;").attr("href", "#"));

			if (result.data.page.hasPreviousPage == false) {
				firstPageLi.addClass("disabled");
				previousPageLi.addClass("disabled");
			} else {
				firstPageLi.click(function() {
					showPage(1);
				});
				previousPageLi.click(function() {
					showPage(result.data.page.pageNum - 1);
				});
			}

			var nextPageLi = $("<li></li>").append(
					$("<a></a>").append("&raquo;").attr("href", "#"));
			var lastPageLi = $("<li></li>").append(
					$("<a></a>").append("末页").attr("href", "#"));

			if (result.data.page.hasNextPage == false) {
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			} else {
				nextPageLi.click(function() {
					showPage(result.data.page.pageNum + 1);
				});
				lastPageLi.click(function() {
					showPage(result.data.page.pages);
				});
			}

			ul.append(firstPageLi).append(previousPageLi);

			$.each(result.data.page.navigatepageNums, function(index, item) {
				var numLi = $("<li></li>").append(
						$("<a></a>").append(item).attr("href", "#"));

				if (result.data.page.pageNum == item) {
					numLi.addClass("active");
				}

				numLi.click(function() {
					showPage(item);
				});

				ul.append(numLi);
			});

			ul.append(nextPageLi).append(lastPageLi);

			var navElement = $("<nav></nav>").append(ul).appendTo(
					"#page_nav_area");

		}
		//还原表单状态的方法
		function reset_form(ele){
			//清除表单的数据
			$(ele)[0].reset();
			//清除校验状态
			$(ele).find("*").removeClass("has-error has-success");
			//清除提示信息
			$(ele).find(".help-block").text("");
			
		}
		
		//点击删除按钮
		$(document).on("click",".delete-btn",function() {
			var stuName= $(this).parent().parent().find("td:eq(2)").text();
			//alert(stuName);
			if(confirm("确定要删除【"+stuName+"】吗？")){
				 $.ajax({
					 url:"${pageContext.request.contextPath }/stu/"+$(this).attr("delete-stuid"),
					 type:"DELETE",
					 success:function(result){
						 alert(result.msg);
						 showPage(currPage);
					 }
				 });
			}

		});
		
		//点击编辑按钮
		$(document).on("click",".edit-btn",function() {
			//1.获取所有专业
			getMajors("#stuUpdateModal select");
			//2.获取要编辑的学生信息
			getStudent($(this).attr("edit-stuid"));
			
			//将编辑按钮的edit-stuid值传递给修改按钮
			$("#stu_update_btn").attr("edit-stuid",$(this).attr("edit-stuid"));
			//3.显示模态框
			 $('#stuUpdateModal').modal({
				backdrop : "static"
			});

		});
		
        //点击新增按钮
		$("#stu_add_modal_btn").click(function() {
			//0.还原表单状态
			reset_form("#stuAddModal form");
			//1.获取所有专业
			getMajors("#stuAddModal select");
			//2.显示模态框
			$('#stuAddModal').modal({
				backdrop : "static"
			});
		});
		//<option value="1">计算机应用技术</option>
		//{"code":101,"msg":"处理成功！","data":
		//{"majors":[{"majorId":1,"majorName":"计算机应用技术"},{"majorId":2,"majorName":"计算机网络应用"},{"majorId":3,"majorName":"物联网技术"},{"majorId":4,"majorName":"数控技术"},{"majorId":5,"majorName":"机电一体化技术"},{"majorId":6,"majorName":"数控技术"},{"majorId":7,"majorName":"机电一体化技术"}]}}
		function getMajors(ele){
			$.ajax({
				url:"${pageContext.request.contextPath }/majors",
				type:"GET",
				success:function(result){
					$(ele).empty();
					$.each(result.data.majors,function(){
					    var optionElement=$("<option></option>").append(this.majorName).attr("value",this.majorId);
					    optionElement.appendTo(ele);
					});
				}
				
			});
		}
		function getStudent(id){
			$.ajax({
				url:"${pageContext.request.contextPath }/stu/"+id,
				type:"GET",
				success:function(result){
					if(result.code==101){
						var student=result.data.student;
						$("#stuName_update_input").val(student.name);
						$("#email_update_input").val(student.email);
						$("#phone_update_input").val(student.phone);
						$("#birth_update_input").val(new Date(student.birth).toLocaleDateString());
						$("#regTime_update_input").val(new Date(student.regTime).toLocaleDateString());
						$("#stuUpdateModal input[name=gender]").val([student.gender]);
						$("#stuUpdateModal select").val([student.majorId]);
					}

				}
				
			});
		}
		
		//保存按钮的点击事件
		$("#stu_save_btn").click(function(){
			//1.对提交给服务器的数据进行规则校验
			if(!validate_add_form()){
				return false;
			}
			//检测姓名是否可用，不可用的话，不提交AJAX请求
			if($(this).attr("checkName")=="error"){
				return false;
			}
			
			//2.发送AJAX请求，保存学生数据
			//alert($("#stuAddModal form").serialize());
 			$.ajax({
				url:"${pageContext.request.contextPath }/stu",
				type:"POST",
				data:$("#stuAddModal form").serialize(),
				success:function(result){
					if(result.code==101){
						$("#stuAddModal").modal('hide');
						showPage(totalPage);
					}else{
						if(result.data.errors.name!=undefined){
							show_validate_status("#stuName_add_input", "error","姓名只能是2~8位的汉字或6-16位的字符");
						}
						if(result.data.errors.email!=undefined){
							show_validate_status("#email_add_input", "error","邮箱格式不正确");
						}
						if(result.data.errors.phone!=undefined){
							show_validate_status("#phone_add_input", "error","电话号码格式不对");
						}
						if(result.data.errors.birth!=undefined){
							show_validate_status("#birth_add_input", "error","出生日期格式不正确");
						}
						if(result.data.errors.regTime!=undefined){
							show_validate_status("#regTime_add_input", "error","注册日期格式不正确");
						}
					}
				}
			}); 
		});
		
		function validate_add_form(){
			
			var stuName=$("#stuName_add_input").val();
			var regxName=/(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,8})/;
			
			
			if(!regxName.test(stuName)){
				//alert("姓名只能是2~8位的汉字或6-16位的字符");
				show_validate_status("#stuName_add_input", "error","姓名只能是2~8位的汉字或6-16位的字符");
				return false;
			}else{
				//$("#stuName_add_input").parent().addClass("has-success");
				//$("#stuName_add_input").next("span").text("");
				show_validate_status("#stuName_add_input", "success","");
			}
			
			
			var email=$("#email_add_input").val();
			var regxEmail=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
			
			if(!regxEmail.test(email)){
				//alert("邮箱格式不正确！");
				show_validate_status("#email_add_input", "error","邮箱格式不正确");
				return false;
			}
			else{
				show_validate_status("#email_add_input", "success","");

			}
			
			return true;
		}
		
		function show_validate_status(ele, status,msg){
			$(ele).parent().removeClass("has-error has-success");
			if(status=="success"){
				$(ele).parent().addClass("has-success");
				$(ele).next("span").text(msg);
			}else if(status=="error"){
				$(ele).parent().addClass("has-error");
				$(ele).next("span").text(msg);
			}
		}
		//检测姓名是否可用
		$("#stuName_add_input").change(function(){
			 var stuName= this.value;
			 $.ajax({
				 url:"${pageContext.request.contextPath }/checkName",
				 type:"POST",
				 data:"stuName="+stuName,
				 success:function(result){
					 if(result.code==101){
						 show_validate_status("#stuName_add_input", "success",result.data.va_name);
						 $("#stu_save_btn").attr("checkName","success");
						 
					 }else{
						 show_validate_status("#stuName_add_input", "error",result.data.va_name);
						 $("#stu_save_btn").attr("checkName","error");
					 }
				 }
					 
				 
			 });
		});
		
		$("#stu_update_btn").click(function(){
			//1校验表单数据
			if(!validate_update_form()){
				return false;
			}
			//2发送AJAX请求，更新学生数据
			 $.ajax({
				 url:"${pageContext.request.contextPath }/stu/"+$(this).attr("edit-stuid"),
				 /* type:"POST",
				 data:$("#stuUpdateModal form").serialize()+"&_method=PUT", */
				 type:"PUT",
				 data:$("#stuUpdateModal form").serialize(),
				 success:function(result){
						if(result.code==101){
							$("#stuUpdateModal").modal('hide');
							showPage(currPage);
						}else{
							if(result.data.errors.name!=undefined){
								show_validate_status("#stuName_update_input", "error","姓名只能是2~8位的汉字或6-16位的字符");
							}
							if(result.data.errors.email!=undefined){
								show_validate_status("#email_update_input", "error","邮箱格式不正确");
							}
							if(result.data.errors.phone!=undefined){
								show_validate_status("#phone_update_input", "error","电话号码格式不对");
							}
							if(result.data.errors.birth!=undefined){
								show_validate_status("#birth_update_input", "error","出生日期格式不正确");
							}
							if(result.data.errors.regTime!=undefined){
								show_validate_status("#regTime_update_input", "error","注册日期格式不正确");
							}
						}
				 }
					 
				 
			 });
		});
		
		function validate_update_form(){
			
			var stuName=$("#stuName_update_input").val();
			var regxName=/(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,8})/;
			
			
			if(!regxName.test(stuName)){
				//alert("姓名只能是2~8位的汉字或6-16位的字符");
				show_validate_status("#stuName_update_input", "error","姓名只能是2~8位的汉字或6-16位的字符");
				return false;
			}else{
				show_validate_status("#stuName_update_input", "success","");
			}
			
			
			var email=$("#email_update_input").val();
			var regxEmail=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
			
			if(!regxEmail.test(email)){
				//alert("邮箱格式不正确！");
				show_validate_status("#email_update_input", "error","邮箱格式不正确");
				return false;
			}
			else{
				show_validate_status("#email_update_input", "success","");

			}
			
			return true;
		}
		
		//全选功能的实现
		$("#check_All").click(function(){
			//alert($(this).attr("checked"));
			//alert($(this).prop("checked"));
			
			$(".check_item").prop("checked",$(this).prop("checked"));
			
		});
		
		$(document).on("click",".check_item",function() {
            // alert($(".check_item").length);
             //alert($(".check_item:checked").length);
             
             var flag= $(".check_item:checked").length==$(".check_item").length;
             $("#check_All").prop("checked",flag);
		});
		
		//批量删除按钮的点击 事件
		$("#stu_del_modal_btn").click(function(){
			var stuNames="";
			var stuIds="";
			
			$.each( $(".check_item:checked") ,function(){
				stuNames += $(this).parents("tr").find("td:eq(2)").text()+",";
				stuIds +=$(this).parents("tr").find("td:eq(1)").text()+",";
			})
			
			stuNames = stuNames.substring(0, stuNames.length-1);
			stuIds= stuIds.substring(0,stuIds.length-1);
			
			if(confirm("确定要删除【"+stuNames+"】吗？")){
				 $.ajax({
					 url:"${pageContext.request.contextPath }/stu/"+stuIds,
					 type:"DELETE",
					 success:function(result){
						 alert(result.msg);
						 showPage(currPage);
					 }
				 });
			}
		});
	</script>
</body>
</html>