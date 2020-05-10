<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>建表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    Connection con=java.sql.DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=User","cxm","cxm");
    Statement stmt=con.createStatement();
    
    String a1="create table Stu(学号 nvarchar(10),姓名 nvarchar(12),性别 nvarchar(10),年龄 int,专业 nvarchar(20),班级 nvarchar(10),导师 nvarchar(12),GPA nvarchar(10))";//建学生表
    String a2="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1001',N'张三',N'男',20,N'软件工程','1801','Jack','3.0')";//插入数据
    String a3="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1002',N'张曼',N'女',20,N'软件工程','1801','Jack','3.3')";
    String a4="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1003',N'万三',N'男',19,N'软件工程','1801','Rose','2.8')";
    String a5="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1004',N'李四',N'男',20,N'软件工程','1802','Jack','2.5')";
    String a6="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1005',N'王磊',N'男',21,N'软件工程','1802','Jack','3.0')";
    
    String a7="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1006',N'王佳',N'女',20,N'软件工程','1802','Rose','3.1')";
    String a8="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1007',N'周瑜',N'男',20,N'软件工程','1803','Peter','2.0')";
    String a9="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1008',N'张伟',N'男',21,N'软件工程','1803','Peter','2.3')";
    String a10="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1009',N'吴后义',N'男',19,N'软件工程','1804','Judy','2.4')";
    String a11="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1010',N'李智恩',N'女',20,N'软件工程','1804','Judy','2.5')";
    String a12="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1011',N'王嘉尔',N'男',21,N'软件工程','1804','Jack','3.2')";
    
    String a13="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1012',N'邓伦',N'男',20,N'软件工程','1804','Rose','3.1')";
    String a14="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1013',N'陈晨',N'女',20,N'软件工程','1805','Rose','2.5')";
    String a15="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1014',N'卢小伟',N'男',21,N'软件工程','1805','Rose','2.3')";
    String a16="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1015',N'周晓',N'女',19,N'软件工程','1805','Amy','2.6')";
    String a17="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1016',N'李弘恩',N'女',20,N'信息安全','1806','Sam','2.5')";
    String a18="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1017',N'王萌',N'女',21,N'信息安全','1806','Sam','3.2')";
    String a19="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1018',N'赵信',N'男',20,N'信息安全','1806','Sam','3.1')";
    String a20="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1019',N'孙怡',N'女',21,N'信息安全','1807','Jim','3.2')";
    String a21="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1020',N'赵龙',N'男',20,N'信息安全','1807','Jim','3.5')";
    String a22="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1021',N'张娇',N'女',19,N'信息安全','1807','Jim','3.2')";
    String a23="insert into Stu(学号,姓名,性别,年龄,专业,班级,导师,GPA) values('1022',N'韩毅信',N'男',20,N'信息安全','1808','Cherry','3.7')";
    
    stmt.executeUpdate(a1);
    stmt.executeUpdate(a2);
    stmt.executeUpdate(a3);
    stmt.executeUpdate(a4);
    stmt.executeUpdate(a5);
    stmt.executeUpdate(a6);
    stmt.executeUpdate(a7);
    stmt.executeUpdate(a8);
    stmt.executeUpdate(a9);
    stmt.executeUpdate(a10);
    stmt.executeUpdate(a11);
    stmt.executeUpdate(a12);
    stmt.executeUpdate(a13);
    stmt.executeUpdate(a14);
    stmt.executeUpdate(a15);
    stmt.executeUpdate(a16);
    stmt.executeUpdate(a17);
    stmt.executeUpdate(a18);
    stmt.executeUpdate(a19);
    stmt.executeUpdate(a20);
    stmt.executeUpdate(a21);
    stmt.executeUpdate(a22);
    stmt.executeUpdate(a23);
    
    stmt.close();
    con.close();
    %>
  </body>
</html>
