<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store.jsp</title>
    </head>
    <body>
        <%
String username,pwd,pwd1,cardno;
username=request.getParameter("t1");
pwd=request.getParameter("t2");
pwd1=request.getParameter("t3");
cardno=request.getParameter("t4");

session.setAttribute("user",username);
session.setAttribute("pwd",pwd);
session.setAttribute("onetime",pwd1);
session.setAttribute("cardno",cardno);
response.sendRedirect("Index.jsp");
%>
    </body>
</html>

