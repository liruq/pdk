<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script>
		function login(){
			if(form1.uid.value==""){
				alert("����д�û���");
				return false;
			}
			if(form1.password.value==""){
				alert("����д�û�����");
				return false;
			}
			var span_id=document.getElementById("span_id");
			var uid = document.getElementById("uid").value.trim();
			reg= /^[0-9a-zA-Z]*$/g;
			if(!reg.test(uid)){
				span_id.innerHTML="<font color='red'>�û������벻�淶�����������룡</font>";
				form1.uid.value="";
				form1.password.value="";
				return false;
			}
		}

	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
	<title>��ѧ�����߿���ϵͳ</title>

	<%
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Cache-Control","no-store");
		response.setDateHeader("Expires",0);
		response.setHeader("Pragma","no-cache");


	%>
	<style type="text/css">
		<!--
		.STYLE1 {
			font-size: 24px
		}

		#form1 .STYLE1 {
			font-family: "Microsoft YaHei UI";
			font-size: 100%;
			line-height: 142%;
			font-weight: bold;
			color: #FFFFFF;
			background-color: #0072C6;
			text-align: center;
			text-indent: 0px;
			width: 84.4688px;
			margin-top: 0px;
			margin-right: 2px;
			margin-bottom: 0px;
			margin-left: 2px;
			padding-top: 3px;
			padding-right: 12px;
			padding-bottom: 5px;
			padding-left: 12px;
			border-top-style: none;
			border-right-style: none;
			border-bottom-style: none;
			border-left-style: none;
		}

		.STYLE2 {
			font-size: 16px;
			font-family: "Microsoft YaHei UI";
		}

		#form1 .zimui12 .ziti16 .tiyanshehui {
			color: #999999;
		}

		.STYLE4 {
			font-size: 12px;
			font-family: "Microsoft YaHei UI";
		}

		.STYLE5 {
			font-family: "Microsoft YaHei UI";
			font-size: 12px;
			color: #099;
		}

		.STYLE6 {
			font-family: "Microsoft YaHei UI"
		}

		.STYLE7 {
			font-family: "Microsoft YaHei UI";
			font-size: 14px;
		}

		.STYLE8 {
			font-size: 14px
		}

		.STYLE11 {
			font-family: "Microsoft YaHei UI";
			font-size: 18px;
		}
		-->
	</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="user_check.jsp">
	<table width="1023" height="450" border="0" align="center">
		<tr>
			<td width="574" height="523" rowspan="6">

			</td>
			<td height="56">
				<div align="left">
					<p>
						&nbsp;
					</p>

				</div>
			</td>
		</tr>
		<tr>
			<td height="29">
				<span class="STYLE5" id="span_id">*����ȷ�����û���������</span>

			</td>
		</tr>
		<tr>
			<td height="60">
				<label></label>
				<span class="STYLE2">�û���</span>
				<label>
					<input type="text" name="uid" id="uid" />
				</label>
			</td>
		</tr>
		<tr>
			<td height="60">
				<span class="STYLE2">��&nbsp;&nbsp; ��</span>
				<label>
					<input type="password" name="password" id="password" />
				</label>
			</td>
		</tr>
		<tr>
			<td height="27" valign="top">
						<span class="STYLE11">ѧ�� <label>
							<input type="radio" name="radiobutton" value="radiobutton"
								   checked />
						</label> &nbsp;&nbsp; ��ʦ <label>
							<input type="radio" name="radiobutton" value="radiobutton" />
						</label> </span>
			</td>
		</tr>
		<tr>
			<td height="65" valign="top">
				<label>
					<br />
					<input type="submit" name="Submit" value="��½"
						   onClick="return login()" class="STYLE1" />
					&nbsp;
				</label>
				<label>
					<input name="Submit2" type="reset" value="ȡ��" class="STYLE1" />
				</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div align="center">
							<span class="zimui12"><span class="zitimax">&nbsp;<span
									style="text-align: left">&nbsp;</span> </span> </span>
					<hr />

				</div>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
