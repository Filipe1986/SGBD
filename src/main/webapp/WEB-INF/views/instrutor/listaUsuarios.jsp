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


        <title>Sistema FJM - Lista de Usuários</title>
    </head>
    <body>
        <c:import url="../head.jsp" />



        <div class="container">

            <div class="input-group">
                <form:form id="contact"
                           action="${s:mvcUrl('IC#listarUsuariosComNome').build()}"
                           method="post">
                    <input type="text" name="nome" class="form-control"
                           placeholder="Pesquisar Usuario...">

                    <button class="btn btn-default" type="button">Pesquisar!</button>
                </form:form>
            </div>

        </div>


        <div class="container">

            <h1>Lista de usuarios</h1>


            <table class="table table-bordered table-striped table-hover ">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Sexo</th>

                        <th>Deletar</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${usuarios}" var="usuario">
                        <tr>
                            <td><a
                                    href="${s:mvcUrl('IC#detalhes').arg(0 , usuario.id).build()}"
                                    style="display: block">${usuario.id}</a></td>
                            <td><a
                                    href="${s:mvcUrl('IC#detalhes').arg(0 , usuario.id).build()}"
                                    style="display: block">${usuario.nome}</a></td>
                            <td>${usuario.email}</td>
                            <td>${usuario.status}</td>
                            <td>${usuario.sexo}</td>



                            <td><a
                                    href="${s:mvcUrl('IC#deletarUsuario').arg(0 , usuario.id).build()}"
                                    style="display: block">

                                    <h1>X</h1>
                                </a></td>
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