<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema FJM - Ficha de Treino</title>
        <!-- CSS -->
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" type="text/css">
    </head>
    <body>

	<c:import url="../head.jsp" />

	<div class="container">

		<form:form id="contact"
			action="${s:mvcUrl('IC#detalhesFicha').arg(0 , ficha.fichaId).build()}"
			method="POST">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<h4>
						<span class="glyphicon glyphicon-user"></span> FICHA DE TREINO
					</h4>
				</div>
				<div class="panel-body">

					<div class="row">
						<div class="col-md-4">
							<p><strong>Nome do aluno</strong>: ${ficha.usuario.nome}</p>
							<p><strong>Nome do Instrutor</strong>: ${ficha.instrutor.nome}</p>
							<p><strong>Objetivo</strong>: ${ficha.objetivo}</p>
						</div>

						<div class="col-md-4">
							<p><strong>Frequência</strong>: ${ficha.frequenciaSemanal} vezes por semana</p>
							<p><strong>Duração do treino</strong>: ${ficha.tempoDisponivel}</p>
							<p><strong>Divisão de treino</strong>: ${ficha.serie.ordinal()}</p>
						</div>

						<div class="col-md-4">
							<p><strong>Estado</strong>: ${ficha.fichaAtual}</p>
							<p><strong>Data Inicial</strong>: ${ficha.dataInicial}</p>
							<p><strong>Data Final</strong>: ${ficha.dataFinal}</p>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6">
							<!-- Divisão A -->
							<table class="table table-bordered table-striped">
								<caption class="text-center">
									<strong>TREINO A</strong>
								</caption>
								<tr>
									<th class="text-center">Nº</th>
									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
								</tr>
								<c:forEach items="${ficha.exercicios}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'A'}">
										<tr>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>

						</div>
						
						<c:if test="${ficha.serie.ordinal() > 0}">
						<div class="col-md-6">
							<!-- Divisão B -->
							<table class="table table-bordered table-striped">
								<caption class="text-center">
								
									<strong>TREINO B</strong>
								</caption>
								<tr>
									<th class="text-center">Nº</th>
									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
								</tr>
								<c:forEach items="${ficha.exercicios}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'B'}">
										<tr>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
						</c:if>
					</div>

					<div class="row">
						<c:if test="${ficha.serie.ordinal() > 1}">
						<div class="col-md-6">
							<!-- Divisão C -->
							<table class="table table-bordered table-striped">
								<caption class="text-center">
									<strong>TREINO C</strong>
								</caption>
								<tr>
									<th class="text-center">Nº</th>
									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
								</tr>
								<c:forEach items="${ficha.exercicios}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'C'}">
										<tr>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
						</c:if>
						
						<c:if test="${ficha.serie.ordinal() > 2}">
						<div class="col-md-6">
							<!-- Divisão D -->
							<table class="table table-bordered table-striped">
								<caption class="text-center">
									<strong>TREINO D</strong>
								</caption>
								<tr>
									<th class="text-center">Nº</th>
									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
								</tr>
								<c:forEach items="${ficha.exercicios}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'D'}">
										<tr>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
						</c:if>
					</div>
					
					<div class="row">
						<c:if test="${ficha.serie.ordinal()> 3}">
						<div class="col-md-6">
							<!-- Divisão E -->
							<table class="table table-bordered table-striped">
								<caption class="text-center">
									<strong>TREINO E</strong>
								</caption>
								<tr>
									<th class="text-center">Nº</th>
									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
								</tr>
								<c:forEach items="${ficha.exercicios}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'E'}">
										<tr>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
						</c:if>
					</div>

					<div class="row">
						<div class="col-md-6">
							<p><strong>DICAS PARA TREINO</strong></p>
							<ul class="list-group">
								<li class="list-group-item">Certifique-se que o assento e os suportes estão corretamente ajustados</li>
								<li class="list-group-item">Respire em cada repetição</li>
								<li class="list-group-item">A cada três treinos, tente aumentar os pesos</li>
							</ul>
						</div>

						<div class="col-md-6">
							<p><strong>DICAS PARA CARDIO</strong></p>
							<ul class="list-group">
								<li class="list-group-item">Aumente a intensidade gradativamente sem se sentir ofegante</li>
								<li class="list-group-item">Trabalho de cardio - no mínimo 20 minutos</li>
								<li class="list-group-item">Beba água antes, durante e depois do treino</li>
							</ul>
						</div>
					</div>
				</div><!-- End of class="panel-body"> -->
			</div><!-- End of class="panel panel-default" -->
		</form:form>
	</div>

	<c:import url="../footer.jsp" />

	<!-- JavaScript -->
	<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/scripts.js"></script>
	<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
</body>
</html>