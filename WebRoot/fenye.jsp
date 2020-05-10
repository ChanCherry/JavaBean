<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*"%>

<jsp:useBean id="stuDeal" class="Stu.StuDeal" scope="page"/>

<%
	//变量声明 
	ResultSet rs; //结果集对象 
	String strCon; //数据库连接字符串 
	int pageSize=5; //一页显示的记录数 
	int rowCount; //记录总数 
	int pageCount; //总页数 
	int intPage; //待显示页码 
	String strPage;
	int i;
	
	//取得待显示页码 
	strPage = request.getParameter("page");
	if (strPage == null) {//表明在QueryString中没有page这一个参数，此时显示第一页数据 
		intPage = 1;
	} else {//将字符串转换成整型 
		intPage = Integer.parseInt(strPage);
		if (intPage < 1)
			intPage = 1;
	}

	//执行SQL语句并获取结果集 
	rs = stuDeal.executeQuery("select * from Stu");
	//获取记录总数 
	rs.last();//光标在最后一行 
	rowCount = rs.getRow();//获得当前行号 
	//记算总页数 
	pageCount = (rowCount + pageSize - 1) / pageSize;
	//调整待显示的页码 
	if (intPage > pageCount)
		intPage = pageCount;
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>分页</title>
	</head>
	<body>
		
		<table width="600" border="1" cellspacing="1" cellpadding="2">
			<tr bgcolor="#BBFFFF">
				<td><center>学号</center></td>
				<td><center>姓名</center></td>
				<td><center>性别</center></td>
				<td><center>年龄</center></td>
				<td><center>专业</center></td>
				<td><center>班级</center></td>
				<td><center>导师</center></td>
				<td><center>GPA</center></td>
			</tr>
			
			<%
				if (pageCount > 0) {
					//将记录指针定位到待显示页的第一条记录上 
					rs.absolute((intPage - 1) * pageSize + 1);
					//显示数据 
					i = 0;
					while (i < pageSize && !rs.isAfterLast()) {
			%>
			
			<tr>
				<% for(int j=1;j<=8;j++){%>
				<td><center><%=rs.getString(j)%></center></td>
				<%} %>
			</tr>
			<%
				rs.next();
				i++;
					}
				}
			%>
		</table>

		<br>
		<form method="post" action="fenye.jsp" name="form1">
			当前第<%=intPage%>页 ，共<%=pageCount%>页&nbsp;&nbsp;&nbsp;&nbsp;

			<a href="fenye.jsp?page=1">第一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			
			<%
			if (intPage < pageCount) {
			%>
			<a href="fenye.jsp?page=<%=intPage + 1%>">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<%
				}
			%>
			<%
				if (intPage > 1) {
			%>
			<a href="fenye.jsp?page=<%=intPage - 1%>">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<%
				}
			%>
			<%
				if (intPage != pageCount) {
			%>
			<a href="fenye.jsp?page=<%=pageCount%>">最后一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<%
				}
			%>

			跳转到第
			<input type="text" name="page" size="2">&nbsp;页&nbsp;&nbsp;
			<input type="submit" value="GO" name="submit" style="width: 60px;">
		</form>

		<br><hr><br>请输入要添加的学生信息：<br><br>
		<form action="insert.jsp" method="post" name="form2">
			学号：<input type="text" name="sno">&nbsp;&nbsp;&nbsp;&nbsp;
			姓名：<input type="text" name="sname">&nbsp;&nbsp;&nbsp;&nbsp;
			性别：<select name="sex" style="width:60px;height:22px;">
			<option value="男">男</option>
			<option value="女">女</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			年龄：<input type="text" name="sage"><br><br>
			专业：<input type="text" name="special">&nbsp;&nbsp;&nbsp;&nbsp;
			班级：<input type="text" name="sclass">&nbsp;&nbsp;&nbsp;&nbsp;
			导师：<input type="text" name="smentor">&nbsp;&nbsp;&nbsp;&nbsp;
			GPA：<input type="text" name="gpa"><br><br><br>
			<input type="submit" value="提交" name="submit" style="width: 90px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" name="reset" style="width: 90px;">
		</form>
	</body>
</html>
<%
	stuDeal.close();
%>