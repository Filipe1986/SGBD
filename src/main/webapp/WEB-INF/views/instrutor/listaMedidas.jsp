<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="ftm"%>
<!DOCTYPE HTML>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- css -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css">

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
	type="text/css">


<title>Sistema de academias FJM - Lista de Exercicios</title>
</head>
<body>
	<c:import url="../head.jsp" />
	<div class="container">

		<h1>Lista de Medidas</h1>

		<table class="table table-bordered table-striped table-hover ">
			<thead>
				<tr>
					<th>Nome Exercício</th>
					<th>Deletar</th>
				</tr>
			</thead>

			<c:forEach items="${medidas}" var="medida">
				<tbody>
					<tr>
						<td>${medida.medidaId}</td>
												<td><a
							href="${s:mvcUrl('IC#removeMedida').arg(0 , medida.medidaId).build()}"
							style="display: block">

								X
						</a></td>
			
					</tr>
			</c:forEach>
		</table>

	</div>
	<c:import url="../footer.jsp" />

</body>
<!-- Javascript -->
<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/scripts.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>



</html>