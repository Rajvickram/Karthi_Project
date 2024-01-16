<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%
   String uname, pwd1;
   uname=(String)session.getAttribute("user");
   /*(Sample for printing the name in inside design)out.println("<script> d1.innerHTML='uname';</script>");*/
   pwd1=(String) session.getAttribute("onetime");

           if(uname==null || pwd1 == null)
               response.sendRedirect("login.html");
               else
           if(uname.equals("admin") && pwd1.equals("admin"))   
               {
               out.println("<h1>Hi " +uname  + " </h1> ");
               response.sendRedirect("Confirm.jsp");
               }
               else
                   response.sendRedirect ("wrong.html");
   %>  
    <a href="BankingInfo.jsp"> Bank Information Checking </a>   
        <a href="Logout.jsp"> Logout </a>
        </body>
</html>

