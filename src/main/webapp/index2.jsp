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
	<!-- 新增学生的模态框 -->
	<div class="modal fade" id="AddStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">添加学生信息</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal">
			  <div class="form-group">
			    <label for="name" class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="name" id="stuName_add_input" placeholder="用户名">
			      <span class="help-block"></span>
			    </div>
			  </div>
			  
			  <div class="form-group">
				  <label for="gender" class="col-sm-2 control-label">Gender</label>
				  <div class="col-sm-10">
					  <label class="radio-inline">
						  <input type="radio" name="gender" id="stuGender_add_input" value="男"> 男
						</label>
						<label class="radio-inline">
						  <input type="radio" name="gender" id="stuGender_add_input" value="女"> 女
						</label>
				  </div>
			   </div>
				
			  <div class="form-group">
			    <label for="email" class="col-sm-2 control-label">Email</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" name="email" id="stuEmail_add_input" placeholder="Email">
			      <span class="help-block"></span>
			    </div>
			  </div> 
			  
			  <div class="form-group">
			    <label for="phone" class="col-sm-2 control-label">Phone</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="phone" id="stuPhone_add_input" placeholder="15765755555">
			      <span class="help-block"></span>
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="birth" class="col-sm-2 control-label">Birth</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="birth" id="stuBirth_add_input" placeholder="1999-05-05">
			      <span class="help-block"></span>
			    </div>
			  </div>	
			  
			  <div class="form-group">
			    <label for="regtime" class="col-sm-2 control-label">RegTime</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="regtime" id="stuRegtime_add_input" placeholder="1999-05-05 15:33:55">
			      <span class="help-block"></span>
			    </div>
			  </div>  
			  
			  <div class="form-group">
			    <label for="major" class="col-sm-2 control-label">Major</label>
			    <div class="col-sm-5">
			      <select class="form-control" name="majorId" >
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
	
	<!-- 修改学生的模态框 -->
	<div class="modal fade" id="UpdateStuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">修改学生信息</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal">
			  <div class="form-group">
			    <label for="name" class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="name" id="stuName_update_input" placeholder="用户名">
			      <span class="help-block"></span>
			    </div>
			  </div>
			  
			  <div class="form-group">
				  <label for="gender" class="col-sm-2 control-label">Gender</label>
				  <div class="col-sm-10">
					  <label class="radio-inline">
						  <input type="radio" name="gender" id="stuGender_update_input" value="男"> 男
						</label>
						<label class="radio-inline">
						  <input type="radio" name="gender" id="stuGender_update_input" value="女"> 女
						</label>
				  </div>
			   </div>
				
			  <div class="form-group">
			    <label for="email" class="col-sm-2 control-label">Email</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" name="email" id="stuEmail_update_input" placeholder="Email">
			      <span class="help-block"></span>
			    </div>
			  </div> 
			  
			  <div class="form-group">
			    <label for="phone" class="col-sm-2 control-label">Phone</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="phone" id="stuPhone_update_input" placeholder="15765755555">
			      <span class="help-block"></span>
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="birth" class="col-sm-2 control-label">Birth</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="birth" id="stuBirth_update_input" placeholder="1999-05-05">
			      <span class="help-block"></span>
			    </div>
			  </div>	
			  
			  <div class="form-group">
			    <label for="regtime" class="col-sm-2 control-label">RegTime</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" name="regtime" id="stuRegtime_update_input" placeholder="1999-05-05 15:33:55">
			      <span class="help-block"></span>
			    </div>
			  </div>  
			  
			  <div class="form-group">
			    <label for="major" class="col-sm-2 control-label">Major</label>
			    <div class="col-sm-5">
			      <select class="form-control" name="majorId" >
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


    <div id="container">
       <!-- 标题 -->
       <div class="row">
           <div class="col-mid-10">
               <h2>显示所有学生信息</h2>
           </div>
       </div>
       <!-- 导航栏 -->
       <div class="row">
           <div class="col-mid-4 col-md-offset-6">
				<button type="button" class="btn btn-info" id="stu_add_modal_btn">
				     <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>新增
				</button>
				<button type="button" class="btn btn-danger" id="stu_del_modal_btn">
				     <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除
				</button>
           </div> 
       </div>    
       <!-- 学生信息 -->
       <div class="row">
           <table class="table table-hover" id="stu_table">
              <thead>
                  <tr>
                      <th><input type="checkbox" id="check_all">
			          <th>ID</th>
			          <th>NAME</th>
			          <th>GENDER</th>
			          <th>EMAIL</th>
			          <th>PHONE</th>
			          <th>BIRTH</th>
			          <th>REGTIME</th>
			          <th>MAJOR</th>
			          <th>EDIT</th>
			          <th>DELETE</th>
			       </tr>
              </thead>
              <tbody></tbody>  
           </table>
       </div>
       <!-- 分页信息 -->
       <div class="row">
           <div class="col-mid-6" id="page_info_area">
           </div>
           <div class="col-mid-6 col-md-offset-4" id="page_nav_area">
           </div>
       </div>
    </div>

  	
    <script>
    //显示第一页
    $(function() {
		showPage(1);
	});
    
    //总页数
    var totalPage;
    //当前页数
    var currPage;
    
    //根据分页数显示当前页的学生信息
    function showPage(n) {
		$.ajax({
			url:"${pageContext.request.contextPath }/students",
			data:"pn="+n,
			type:"GET",
			success:function(result){
			//显示学生数据
		    build_stu_table(result);
            //显示分页信息
            build_page_info(result);
            //显示导航信息
            build_page_nav(result);
			}
		});		
	}
        
    //显示学生信息
    function build_stu_table(result){
    	//制空原有的学生信息
        $("#stu_table tbody").empty();
		var students=result.data.page.list;
		//循环产生学生信息
		$.each(students,function(index,item){
			//产生一个学生信息的属性
		    var checkBoxTd=$("<td><input type='checkbox' class='check_item'></inptu></td>");     //复选框
			var idTd=$("<td></td>").append(item.id);                                             //ID
			var nameTd=$("<td></td>").append(item.name);                                         //姓名
			var genderTd=$("<td></td>").append(item.gender);                                     //性别
			var emailTd=$("<td></td>").append(item.email);                                       //邮箱
			var phoneTd=$("<td></td>").append(item.phone);                                       //电话
			var birthTd=$("<td></td>").append(new Date(item.birth).toLocaleDateString());        //出生日期
			var regtimeTd=$("<td></td>").append(new Date(item.regtime).toLocaleDateString());    //注册日期
			var majorNameTd=$("<td></td>").append(item.major.majorName);                         //专业
				
			//产生编辑按钮
			var editBtn=$("<button></button>").addClass("btn btn-warning btn-sm update-btn")
			            .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
			//给编辑按钮赋予id的属性
			editBtn.attr("edit-stuId",item.id);
			//产生删除按钮
			var deleteBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete-btn")
			              .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
			//给删除按钮赋予id的属性
			deleteBtn.attr("delete-stuId",item.id);
		    //将按钮加入到表格当中
			var editBtnTd=$("<td></td>").append(editBtn);
			var deleteBtnTd=$("<td></td>").append(deleteBtn);
			//将一条学生的信息加入到表格当中
			$("<tr></tr>").append(checkBoxTd)
				          .append(idTd)
				          .append(nameTd)
				          .append(genderTd)
				          .append(genderTd)
				          .append(emailTd)
				          .append(phoneTd)
				          .append(birthTd)
				          .append(regtimeTd)
				          .append(majorNameTd)
				          .append(editBtnTd)
				          .append(deleteBtnTd)
				          .appendTo("#stu_table tbody");	
		});
	}
        
    //显示分页信息
	function build_page_info(result) {
    	//制空原有的分页信息
		$("#page_info_area").empty();
    	//产生分页信息
		$("#page_info_area").append("当前第"+result.data.page.pageNum+"页/总共"
					                +result.data.page.pages+"页，学生总数为"+result.data.page.total);	
    	totalPage=result.data.page.pages;           //获取总页数
		currPage=result.data.page.pageNum;          //获取当前页数
	}
		
	//显示分页导航栏			
	function build_page_nav(result) {
		//制空原有导航栏
        $("#page_nav_area").empty();
		//产生导航栏
        var ul = $("<ul></ul>").addClass("pagination");
		//产生首页按钮
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
		//产生上一页按钮
        var previousPageLi = $("<li></li>").append($("<a></a>").append("&laquo;").attr("href", "#"));
		//判断当前页是否为第一页
        if (result.data.page.hasPreviousPage == false) {
        	//如果为第一页，则首页和上一页按钮失效
            firstPageLi.addClass("disabled");
            previousPageLi.addClass("disabled");
        } else {
        	//如果不为第一页，则首页和上一页按钮有效
        	//设置首页按钮的点击事件
            firstPageLi.click(function() {
            showPage(1);
        });
        	//设置上一页按钮的点击事件
            previousPageLi.click(function() {
                showPage(result.data.page.pageNum - 1);
            });
        }
		//产生下一页按钮
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;").attr("href", "#"));
		//产生末页按钮
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
      //判断当前页是否为末页
        if (result.data.page.hasNextPage == false) {
        	//如果为末页，则末页和下一页按钮失效
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
        	//如果不为末页，则末页和下一页按钮按钮有效
        	//设置下一页按钮的点击事件
            nextPageLi.click(function() {
            showPage(result.data.page.pageNum + 1);
            });
        	//设置末页按钮的点击事件
            lastPageLi.click(function() {
            showPage(result.data.page.pages);
            });
        }
        //将首页和第一页加入到html中
        ul.append(firstPageLi).append(previousPageLi);
        //循环产生中间页数
        $.each(result.data.page.navigatepageNums, function(index, item) {
             var numLi = $("<li></li>").append($("<a></a>").append(item).attr("href", "#"));
             //改变当前页码的样式
             if (result.data.page.pageNum == item) {
                 numLi.addClass("active");
             }
             //设置页码的点击事件
             numLi.click(function() {
                 showPage(item);
             });
             //将页码加入到html中
             ul.append(numLi);
         });
         //将下一页和末页加入到HTML中
         ul.append(nextPageLi).append(lastPageLi);
         var navElement = $("<nav></nav>").append(ul).appendTo("#page_nav_area");
    }		

	//清空模态框中的信息
    function reset_form(ele){
		//清除表单的数据
		$(ele)[0].reset();
	    //清除校验状态
		$(ele).find("*").removeClass("has-error has-success");
		//清除提示信息
		$(ele).find(".help-block").text("");
	}
	
	//新增学生的模态框显示
	$("#stu_add_modal_btn").click(function(){
		//还原模态框
		reset_form("#AddStuModal form");
		//获取所有专业
		getMajors("#AddStuModal select");
		//显示模态框
		$("#AddStuModal").modal({
		     backdrop: "static"
		});
	});
		
	//单个学生修改的模态框显示	
	$(document).on("click",".update-btn",function(){
		//获取所有专业
		getMajors("#UpdateStuModal select");
		//获取学生的信息
		getStudent($(this).attr("edit-stuId"));
		//将编辑按钮的属性值传递给修改按钮
		$("#stu_update_btn").attr("edit-stuId",$(this).attr("edit-stuId"));
		//显示模态框
		$("#UpdateStuModal").modal({
		     backdrop: "static"
		});
	});
	
	//单个学生信息的删除
	$(document).on("click",".delete-btn",function(){
		//获取学生姓名
		var stuName=$(this).parent().parent().find("td:eq(2	)").text();
		//产生提示框，提示是否删除学生
		if(confirm("确定要删除"+stuName+"吗？")){
		    $.ajax({
			    url:"${pageContext.request.contextPath }/stu/"+$(this).attr("delete-stuId"),
				type:"DELETE",
			    success:function(result){
			    //返回删除成功信息
				alert(result.msg);
				showPage(currPage);
				}
		    })
		}
	});
	
	//获取专业信息
	function getMajors(ele){		
		$.ajax({
			url:"${pageContext.request.contextPath }/majors",
			type:"GET",
			success:function(result){
				//制空原有的信息
				$(ele).empty();
				//循环将专业信息加入到下拉框中
				$.each(result.data.majors,function(){
				var optionElement=$("<option></option>").append(this.majorName).attr("value",this.majorId);
				optionElement.appendTo(ele);
				})
			}
		});
	}
	
	//根据id获取单个学生信息
	function getStudent(id) {
		$.ajax({
			url:"${pageContext.request.contextPath }/stu/"+id,
			type:"GET",
			success:function(result){
				//判断是否返回学生信息
				if(result.code==101){
					//如果学生信息存在，则将信息加入到编辑的模态框中的表单
					var student=result.data.student;
					$("#stuName_update_input").val(student.name);
					$("#stuEmail_update_input").val(student.email);
					$("#stuPhone_update_input").val(student.phone);
					$("#stuBirth_update_input").val(new Date(student.birth).toLocaleDateString());
					$("#stuRegtime_update_input").val(new Date(student.regtime).toLocaleDateString());
					$("#UpdateStuModal input[name=gender]").val([student.gender]);
					$("#UpdateStuModal select").val([student.majorId]);
				}
			}
		});
	}
			
	//添加新的学生信息	
	$("#stu_save_btn").click(function(){
		//对提交的数据进行校验
		if(!validata_add_form()){
			console.log("validata_add_form()");
			return false;
		}
		//对用户名的可用性进行校验
		if($(this).attr("checkName")=="error"){
			console.log("checkName");
			return false;
		}	
		//发送AJAX请求，提交数据库
		$.ajax({
			url:"${pageContext.request.contextPath }/stu",
			type:"POST",
			data:$("#AddStuModal form").serialize(),
			success:function(result){
				//新增成功后关闭模态框
				if(result.code==101){
					console.log("101");
					$("#AddStuModal").modal('hide');
					showPage(totalPage);
				}else{
				//新增失败，显示出错的信息
					if (result.data.errors.name != undefined) {
						show_validata_status("#stuName_add_input","error","用户名输入有误!!!!");
					}
					if (result.data.errors.email != undefined) {
						show_validata_status("#stuName_add_input","error","邮箱格式有误!!!!");
					}
					if (result.data.errors.phone != undefined) {
						show_validata_status("#stuName_add_input","error","手机格式有误!!!!");
					}
					if (result.data.errors.birth != undefined) {
						show_validata_status("#stuName_add_input","error","出生日期格式有误!!!!");
					}
					if (result.data.errors.regtime != undefined) {
						show_validata_status("#stuName_add_input","error","注册日期格式有误!!!!");
					}
				}				
			}
		});
	});
		
		
	function validata_add_form() {
		var stuName=$("#stuName_add_input").val();
		var regxName=/(^[a-z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,8})/;
		//$("#stuName_add_input").parent().removeClass("has-error has-success");
		if(!regxName.test(stuName)){
		   //alert("用户名输入有误!!!!");
		   //$("#stuName_add_input").parent().addClass("has-error");
		   //$("#stuName_add_input").next("span").text("用户名输入有误!!!!");
		   show_validata_status("#stuName_add_input","error","用户名输入有误!!!!");
		   return false;
		}
		else{
			//$("#stuName_add_input").parent().addClass("has-success");
				//$("#stuName_add_input").next("span").text("");
				show_validata_status("#stuName_add_input","success"," ");
		}
			
		var stuEmail=$("#stuEmail_add_input").val();
		var regxEmail=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;	
		//$("#stuEmail_add_input").parent().removeClass("has-error has-success");
		if(!regxEmail.test(stuEmail)){
			//alert("邮箱格式输入有误!!!!");
			//$("#stuEmail_add_input").parent().addClass("has-error");
			//$("#stuEmail_add_input").next("span").text("邮箱格式输入有误!!!!");
			show_validata_status("#stuEmail_add_input","error","邮箱格式输入有误!!!!");
			return false;
		}
		else{
			//$("#stuEmail_add_input").parent().addClass("has-success");
			//$("#stuEmail_add_input").next("span").text("");
			show_validata_status("#stuEmail_add_input","success","");
		}
			
		/*
		var stuPhone=$("#stuPhone_add_input").val();
			var regxPhone=/((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/;
			$("#stuPhone_add_input").parent().removeClass("has-error has-success");
			if(!regxPhone.test(stuPhone)){
				//alert("电话号码输入有误!!!!");
				$("#stuPhone_add_input").parent().addClass("has-error");
				$("#stuPhone_add_input").next("span").text("电话号码输入有误!!!");
				//show_validata_status("#stuPhone_add_input","error","电话号码输入有误!!!");
				return false;
			}
			else{
				$("#stuPhone_add_input").parent().addClass("has-success");
				$("#stuPhone_add_input").next("span").text("");
				//show_validata_status("#stuPhone_add_input","success","");
			}*/
	
		}
		
	//设置模态框中表单的提示样式
	function show_validata_status(ele,status,msg) {
		//制空原有的样式
		$(ele).parent().removeClass("has-error has-success");
		//如果输入合法，则提示正确信息
		if(status=="success"){
			$(ele).parent().addClass("has-success");
			$(ele).next("span").text(msg);
		}
		//如果输入不合法，则提示错误信息
		else if (status=="error") {
			$(ele).parent().addClass("has-error");
			$(ele).next("span").text(msg);
		}
	}
		
	//判断用户名是否被占用	
	$("#stuName_add_input").change(function(){
		//获取输入的用户名
		var stuName=this.value;
		//发送AJAX请求，判断用户名是否被占用
		$.ajax({
			url:"${pageContext.request.contextPath }/checkName",
			type:"POST",
			data:"stuName="+stuName,
			success:function(result){
				if(result.code==101){
					//如果可用，产生提示信息
				    show_validata_status("#stuName_add_input","success",result.data.va_name);
					$("#stu_save_btn").attr("checkName","success");
				}else{
					//如果不可以，产生提示信息
					show_validata_status("#stuName_add_input","error",result.data.va_name);
					$("#stu_save_btn").attr("checkName","error");
				}
			}
		});
	});
		
		
		$("#stu_update_btn").click(function(){
			/*if(!validata_update_form()){
				console.log("11");
				return false;
				
			}*/
			$.ajax({			
				url:"${pageContext.request.contextPath }/stu/"+$(this).attr("edit-stuId"),
				type:"POST",
				data:$("#UpdateStuModal form").serialize()+"&_method=PUT",
				success:function(result){
					if(result.code==101){
						$("#UpdateStuModal").modal('hide');
						showPage(currPage);
					}else{
						if (result.data.errors.name != undefined) {
							show_validata_status("#stuName_update_input","error","用户名输入有误!!!!");
						}
						if (result.data.errors.email != undefined) {
							show_validata_status("#stuName_update_input","error","邮箱格式有误!!!!");
						}
						if (result.data.errors.phone != undefined) {
							show_validata_status("#stuName_update_input","error","手机格式有误!!!!");
						}
						if (result.data.errors.birth != undefined) {
							show_validata_status("#stuName_update_input","error","出生日期格式有误!!!!");
						}
						if (result.data.errors.regtime != undefined) {
							show_validata_status("#stuName_update_input","error","注册日期格式有误!!!!");
						}
					}
				}
			})
		});
		
		
		function validata_update_form() {
			var stuName=$("#stuName_update_input").val();
			var regxName=/(^[a-z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,8})/;
			if(!regxName.test(stuName)){
				show_validata_status("#stuName_update_input","error","用户名输入有误!!!!");
				return false;
			}
			else{
				show_validata_status("#stuName_update_input","success","");
			}		
			var stuEmail=$("#stuEmail_update_input").val();
			var regxEmail=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;	
			if(!regxEmail.test(stuEmail)){
				show_validata_status("#stuEmail_update_input","error","邮箱格式输入有误!!!!");
				return false;
			}
			else{
				show_validata_status("#stuEmail_update_input","success","");
			}
		}
	
	//设置全选按钮
	$("#check_all").click(function(){
		$(".check_item").prop("checked",$(this).prop("checked"));
	})
		
    //当页面学生信息全选时，全选按钮自动打勾
	$(document).on("click",".check_item",function(){
	    var flag=$(".check_item:checked").length==$(".check_item").length;
		$("#check_all").prop("checked",flag);
	});
		
		
	$("#stu_del_modal_btn").click(function() {
		var strName="";
		var strIds="";
			
		$.each($(".check_item:checked"),function(){
			strName += $(this).parents("tr").find("td:eq(2)").text()+",";
			strIds += $(this).parents("tr").find("td:eq(1)").text()+",";
		})
			
		strName=strName.substring(0,strName.length-1);
		strIds=strIds.substring(0,strIds.length-1);
			
		if (confirm("确定要删除"+strName+"吗？")) {
		    $.ajax({			
				url:"${pageContext.request.contextPath }/stu/"+strIds,
				type:"DELETE",
				success:function(result){
					alert(result.msg);
					showPage(currPage);
				}
			})
			}
			
		})
		
    </script>
</body>
</html>