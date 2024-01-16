  <%
   String uname, pwd1,pwd;
   uname=(String)session.getAttribute("user");
   pwd=(String) session.getAttribute("pwd");
   pwd1=(String) session.getAttribute("onetime");
out.println("<h1>Uname : " + uname);
out.println("<h1> Pwd : " + pwd);
out.println("<h1>Onetime : " +pwd1);
%>
<h1> <%=session.getId()%>
