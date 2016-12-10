<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- css -->

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css">

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
	type="text/css">


<title>Sistema FJM - Detalhes Ficha</title>
</head>

<body>
	<c:import url="../head.jsp" />
	<div class="container">


		<form:form id="contact"
			action="${s:mvcUrl('IC#detalhesFicha').arg(0 , ficha.fichaId).build()}"
			method="POST">

			<h3>Detalhes da Ficha</h3>
			<h2>Aluno: ${ ficha.usuario.nome}</h2>
			<h2>Instrutor: ${ ficha.instrutor.nome}</h2>
			<h2>Estado: ${ ficha.fichaAtual}</h2>
			<h2>Serie: ${ ficha.serie}</h2>
			<h2>Data Início: ${ ficha.dataInicial}</h2>
			<h2>Data Final: ${ ficha.dataFinal}</h2>
			<h2>Objetivo: ${ ficha.objetivo}</h2>
			<h2>Frequencia: ${ ficha.frequenciaSemanal}</h2>
			<h2>Tempo disponivel: ${ ficha.tempoDisponivel}</h2>

			<table class="table">
				<caption class="text-center">A</caption>
				<tr>

					<th>Exércicio</th>
					<th>Aparelho</th>
					<th>Aparelho ID</th>

				</tr>
				<c:forEach items="${ficha.exercicios}" var="exercicio">
				<h1>${exercicio}</h1>
					<c:if test="${exercicio.seriePertencente == 'A'}">
						<tbody>

							<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
							<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
							<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
					</c:if>
				</c:forEach>
			</table>
			<table class="table">
				<caption class="text-center">B</caption>
				<tr>
					<th>Exércicio</th>
					<th>Aparelho</th>
					<th>Aparelho ID</th>
				</tr>
				<c:forEach items="${ficha.exercicios}" var="exercicio">
					<c:if test="${exercicio.seriePertencente == 'B'}">
						<tbody>
							<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
							<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
							<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
					</c:if>
				</c:forEach>
			</table>



		</form:form>
	</div>


	<c:import url="../footer.jsp" />

	<!-- JavaScript -->
	<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/scripts.js"></script>
	<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
</body>
</html>