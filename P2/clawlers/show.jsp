<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<jsp:useBean id="bean" class="mybean.data.srcBean" scope="request"/> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>显示抓取图片</title>
</head>
<body>
<center>显示图片</center>
<%String[]jpgs=bean.getJpgs(); 
  String[]name=bean.getName(); 
  int number=bean.getNum(); 
  for(int i=0;i<number;i++){ 
%>
<%if((i+1)%3==0)out.print("<br/>"); %>
<img src="<%=jpgs[i]%>" width="300px" height="200px"/><%=name[i]%>
<%}
%> 
</body>
</html>
