<%-- 
    Document   : Page3
    Created on : 9 Kas 2023, 22:28:38
    Author     : bsra_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        String isim = request.getParameter("isim");
        out.println("İsim=" + isim);
        String mail = request.getParameter("mail");
        out.println("Mail=" + mail);
        String yas = request.getParameter("yas");
        out.println("Yas=" + yas);
    %>
</body>
</html>
