<%-- 
    Document   : Page2
    Created on : 9 Kas 2023, 22:09:30
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
        if (request.getParameter("isim") != null) {
            String isim = request.getParameter("isim");
            String mail = request.getParameter("mail");
            String yas = request.getParameter("yas");
            boolean kontrol = false;
            try {
                Integer.parseInt(yas);
                kontrol = true;
            } catch (Exception e) {

            }
            if (!mail.contains("@")) {
                out.println("@ Kullanmak Zorundasın");

            } else if (kontrol == false) {
                out.println("Yaş Tam Sayı Olmalı");
            } else {
                session.setAttribute("isim", isim);
                session.setAttribute("mail", mail);
                if (kontrol == true) {
                    session.setAttribute("yas", Integer.parseInt(yas) + 1);
                } else {
                    session.setAttribute("yas", yas);
                }
            }
        } else {
            out.println("Boş Olamaz");
        }

    %>
</body>
</html>
