<%-- 
    Document   : excluirReceita
    Created on : 7 de ago. de 2024, 15:57:18
    Author     : Aluno
--%>

<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Excluir Receita</h1>
        
        <%
    int id = Integer.parseInt(request.getParameter("id"));
   

   
    Receita receita = new Receita();
    receita.setId(id);

    boolean sucesso = receita.deletar();

    if (sucesso) {
        out.println("Receita excluida com sucesso!");
    } else {
        out.println("Erro ao excluir a receita.");
    }
%>
<p><a href="listaReceitas.jsp">Voltar para a lista de receitas.</a></p>
    </body>
</html>
