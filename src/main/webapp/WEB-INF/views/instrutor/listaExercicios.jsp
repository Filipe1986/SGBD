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


        <title>Sistema FJM - Lista de Exercicios</title>
    </head>
    <body>
        <c:import url="../head.jsp" />
        <div class="container">

            <h1>Lista de Exercicios</h1>

            <table class="table table-bordered table-striped table-hover ">
                <thead>
                    <tr>
                    	<th>Nº</th>
                        <th>Nome Exercício</th>

                    </tr>
                </thead>

                <c:forEach items="${exercicios}" var="exercicio">
                    <tbody>
                        <tr>
                        	<td></td>
                            <td>${exercicionomeExercicio}</td>
                        </tr>
                    </c:forEach>
            </table>

        </div>
        
<%--                 <div class="container">

            <h1>Lista de Exercicios</h1>

            <table class="table table-bordered table-striped table-hover ">
                <thead>
                    <tr>
                    	<th>Nº</th>
                        <th>Nome Exercício</th>
                        <th>Nome Aparelho</th>
                    </tr>
                </thead>

                <c:forEach items="${fichatreinoExercicioAparelhos}" var="fea">
                    <tbody>
                        <tr>
                        	<td>fea.fichaExercicioId</td>
                            <td>${fea.ficha}</td>
                            <td>${fea}</td>
                        </tr>
                    </c:forEach>
            </table>

        </div>
 --%>
        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>