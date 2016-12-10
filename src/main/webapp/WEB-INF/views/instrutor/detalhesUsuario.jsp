<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!-- css -->

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
      rel="stylesheet" type="text/css">

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
      type="text/css">

<c:import url="../head.jsp" />
<div class="container">
    <h1>${usuario.nome}</h1>
    <table class="table table-bordered table-striped table-hover ">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Status</th>
                <th>Sexo</th>
                <th>Ficha Atual</th>
                <th>Medidas Atuais</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${usuario.id}</td>
                <td>${usuario.nome}</td>
                <td>${usuario.email}</td>
                <td>${usuario.status}</td>
                <td>${usuario.sexo}</td>

            </tr>
    </table>

    <div>
        <ul class="nav nav-tabs nav-justified">
            <li role="presentation" class="active">
                <form
                    action="${s:mvcUrl('IC#cadastrarNovaFicha').arg(0 , usuario.id).build()}"
                    method="POST">
                    <button type="submit" class="btn btn-primary ">Nova Ficha</button>
                </form>
            </li>
            <li role="presentation">
                <form
                    action="${s:mvcUrl('IC#cadastroNovasMedidas').arg(0 , usuario.id).build()}"
                    method="POST">
                    <button type="submit" class="btn btn-primary ">Novas
                        Medidas</button>
                </form>
            </li>


<%--             <li role="presentation">

                <form action="${s:mvcUrl('IC#listarFichas').build()}" method="POST">
                    <button type="submit" class="btn btn-primary ">
                        Listar Fichas</button>
                </form>

            </li> --%>
            

<%--             <li role="presentation">
                <form action="${s:mvcUrl('IC#listaMedidasPessoais').build()}" method="POST">
                    <button type="submit" class="btn btn-primary ">
                        Listar medidas pessoais</button>
                </form>
            </li> --%>
        </ul>
    </div>

</div>

<c:import url="../footer.jsp" />

<!-- JavaScript -->
<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/scripts.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
</body>
</html>