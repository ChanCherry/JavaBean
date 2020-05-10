<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="stuDeal" class="Stu.StuDeal" scope="page"/>
<jsp:useBean id="stuAdd" class="Stu.StuAdd" scope="page"/>

<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String sno=request.getParameter("sno");
	String sname=request.getParameter("sname");
	String sex=request.getParameter("sex");
	int sage=Integer.parseInt(request.getParameter("sage"));
	String special=request.getParameter("special");
	String sclass=request.getParameter("sclass");
	String smentor=request.getParameter("smentor");
	String gpa=request.getParameter("gpa");
%>


<html>
<head>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<title>添加</title>
</head>
<body>
<%
ResultSet rs=null;
rs = stuDeal.executeQuery("select 学号  from Stu");
String insert="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('"+sno+"',N'"+sname+"',N'"+sex+"','"+sage+"',N'"+special+"','"+sclass+"',N'"+smentor+"','"+gpa+"')";
System.out.println(insert);
String a1="";
int flag=1;
boolean x;
while(rs.next()){
	a1=rs.getString("学号");
	if(a1.equals(sno)){
		flag=0;
		out.print("<script>alert('表中已存在该学号的学生!');</script>");
		break;
	}
}
if(flag==1){
	x=stuAdd.executeUpdate(insert);
	if(x)
		out.print("<script>alert('添加成功!');</script>");
}
stuDeal.close();
//stuAdd.close();
%>
	
</body>
</html>