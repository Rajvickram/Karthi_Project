<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index page</title>
    </head>
    <body>
   <%
   String uname, pwd;
   uname=(String)session.getAttribute("user");
   pwd=(String) session.getAttribute("pwd");
//   out.println("Username : " + uname);
//   out.println("pwd : " + pwd);
           if(uname==null || pwd==null)
               response.sendRedirect("login.html");
               else
           if(uname.equals("admin") && pwd.equals("admin"))   
               out.println("<h1>Hi " +uname  + "</h1> ");
               else
                   response.sendRedirect ("wrong.html");
   %> 
   <h1> <%=session.getId()%> 
    <a href="BankingInfo.jsp"> Bank Information Checking </a>   
    <a href="purchase.jsp"> Purchase </a> 
    </body>
</html>

