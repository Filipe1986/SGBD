<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- css -->

        <link href="<c:url value="/resources/css/bootstrap.min.css" />"
              rel="stylesheet" type="text/css">

        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
              type="text/css">


        <title>Sistema FJM - Lista de Instrutores</title>
    </head>
    <body>
        <c:import url="../head.jsp" />
        <div class="container">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Pesquisar Instrutor...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Pesquisar!</button>
                </span>
            </div>
        </div>
        <div class="container">
            <h1>Lista de instrutores</h1>
            <table class="table table-bordered table-striped table-hover ">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Sexo</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${instrutores}" var="instrutor">
                        <tr>
                            <td>${instrutor.id}</td>
                            <td>${instrutor.nome}</td>
                            <td>${instrutor.email}</td>
                            <td>${instrutor.sexo}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>