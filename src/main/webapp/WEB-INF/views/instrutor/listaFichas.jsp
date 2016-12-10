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


        <title>Sistema FJM - Lista de Fichas</title>
    </head>
    <body>
        <c:import url="../head.jsp" />
        <div class="container">

            <h1>Lista de usuarios</h1>

            <table class="table table-bordered table-striped table-hover ">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Usuário</th>
                        <th>Instrutor</th>
                        <th>Data Inicio</th>
                        <th>Data Fim</th>
                        <th>Atual</th>
                        <th>Serie</th>
                        <th>Objetivo</th>
                        <th>Frequencia</th>
                        <th>Tempo Disponível</th>
               
                    </tr>
                </thead>

                <c:forEach items="${fichas}" var="ficha">
                    <tbody>
                        <tr>
                        	
                            <td>${ficha.fichaId}</td>

                            <td><a
                                    href="${s:mvcUrl('IC#detalhesFicha').arg(0 , ficha.fichaId).build()}"
                                    style="display: block">${ficha.usuario.nome}</a></td>

                            <td>${ficha.instrutor.nome}</td>
                            <td width="80">${ficha.dataInicial}</td>
                            <td width="80">${ficha.dataFinal}</td>
                            <td>${ficha.fichaAtual}</td>
                            <td>${ficha.serie}</td>
                            <td>${ficha.objetivo}</td>
                            <td>${ficha.frequenciaSemanal}</td>
                            <td>${ficha.tempoDisponivel}</td>

                        </tr>
                    </c:forEach>
            </table>

        </div>

        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>