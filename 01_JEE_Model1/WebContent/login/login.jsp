<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style type="text/css">  
		body{  
			color : #000 ;  
			font-size : 12px ;  
			margin : 0px auto ;  
		}  
	</style> 
	<script type="text/javascript">  
		function check(form){  
			//document.forms.form1.username.value取得form1中Username的值 并判断是否为空  
			if(document.forms.form1.txtUserName.value==""){  
				//如果 为""则弹出提示  
				alert("pls input username");  
				//将输入焦点定位到没有输入的地方  
				document.forms.form1.txtUserName.focus();  
				//返回错误  
				return false;  
			}  
			if(document.forms.form1.txtPassword.value==""){  
				alert("pls input password");  
				document.forms.form1.txtPassword.focus();  
				return false;  
			}
			
			return true;
	}  
	</script>
</head>
<body>
	<form action="/Model1/LoginServlet" method="post" name="form1">
		<table border="1" cellspacing="1" cellpadding="1"  bordercolor="silver" align="center">
			<tr> 
				<td colspan="2" align="center" bgcolor="#e8e8e8">用户登陆</td>
			</tr>
			<tr>  
				<td>用户名：</td>  
				<td><input type="text" id="txtUserName" name="UserName"/></td>  
			</tr>  
			<tr>  
				<td>密码：</td>  
				<td><input type="password" id="txtPassword" name="Password"/></td>  
			</tr>  
			<tr>  
				<td><a href="/user/register.jsp" >新用户注册</a></td>  
				<!-- onclick="return check(this) 调用上面的Script进行验证 -->  
				<td><input type="submit" name="submit" onclick="javascript:check(this);"/><input type="reset" name="reset"/></td>  
			</tr> 
		</table>
	</form>
</body>
</html>

  

	  
