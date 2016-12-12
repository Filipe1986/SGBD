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
<title>Sistema FJM - Exercícios</title>
</head>



<body>
	<c:import url="../head.jsp" />

	<form:form id="contact">
		<div class="container">


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
							<p>
								<strong>Nome do aluno</strong>: ${ficha.usuario.nome}
							</p>
							<p>
								<strong>Nome do Instrutor</strong>: ${ficha.instrutor.nome}
							</p>
							<p>
								<strong>Objetivo</strong>: ${ficha.objetivo}
							</p>
						</div>

						<div class="col-md-4">
							<p>
								<strong>Frequência</strong>: ${ficha.frequenciaSemanal} vezes
								por semana
							</p>
							<p>
								<strong>Duração do treino</strong>: ${ficha.tempoDisponivel}
							</p>
							<p>
								<strong>Divisão de treino</strong>: ${ficha.serie}
							</p>
						</div>

						<div class="col-md-4">
							<p>
								<strong>Estado</strong>: ${ficha.fichaAtual}
							</p>
							<p>
								<strong>Data Inicial</strong>: ${ficha.dataInicial}
							</p>
							<p>
								<strong>Data Final</strong>: ${ficha.dataFinal}
							</p>
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

									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
									<th class="text-center">Nº</th>
								</tr>
								<%-- 							<c:forEach items="${ficha.exercicios}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'A'}">
										<tr>

											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
										</tr>
									</c:if>
								</c:forEach> --%>
							</table>

						</div>
						<c:if test="${ficha.serie.ordinal() > 0 }">
							<div class="col-md-6">
								<!-- Divisão B -->
								<table class="table table-bordered table-striped">
									<caption class="text-center">

										<strong>TREINO B</strong>
									</caption>
									<tr>

										<th class="text-center">Exercício</th>
										<th class="text-center">Aparelho</th>
										<th class="text-center">Nº</th>
									</tr>
									<%-- 									<c:forEach items="${ficha.exercicios}" var="exercicio">
										<c:if test="${exercicio.seriePertencente == 'B'}">
											<tr>

												<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
												<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
												<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
											</tr>
										</c:if>
									</c:forEach> --%>
								</table>
							</div>
						</c:if>
					</div>

					<c:if test="${ficha.serie.ordinal() > 1 }">
						<div class="col-md-6">
							<!-- Divisão C -->
							<table class="table table-bordered table-striped">
								<caption class="text-center">
									<strong>TREINO C</strong>
								</caption>
								<tr>

									<th class="text-center">Exercício</th>
									<th class="text-center">Aparelho</th>
									<th class="text-center">Nº</th>
								</tr>
								<c:forEach items="${exerciciosAparelho}" var="exercicio">
									<c:if test="${exercicio.seriePertencente == 'C'}">
										<tr>
											<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
											<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
					</c:if>
				</div>

				<c:if test="${ficha.serie.ordinal() > 2  }">
					<div class="col-md-6">
						<!-- Divisão D -->
						<table class="table table-bordered table-striped">
							<caption class="text-center">
								<strong>TREINO D</strong>
							</caption>
							<tr>

								<th class="text-center">Exercício</th>
								<th class="text-center">Aparelho</th>
								<th class="text-center">Nº</th>
							</tr>
<%-- 							<c:forEach items="${ficha.exercicios}" var="exercicio">
								<c:if test="${exercicio.seriePertencente == 'D'}">
									<tr>

										<td>${exercicio.exercicio_Aparelho.exercicio.nomeExercicio}</td>
										<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
										<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
									</tr>
								</c:if> 
							</c:forEach>--%>
						</table>
					</div>
				</c:if>
			</div>

			<c:if test="${ficha.serie.ordinal()> 3  }">
				<div class="col-md-6">
					<!-- Divisão E -->
					<table class="table table-bordered table-striped">
						<caption class="text-center">
							<strong>TREINO E</strong>
						</caption>
						<tr>

							<th class="text-center">Exercício</th>
							<th class="text-center">Aparelho</th>
							<th class="text-center">Nº</th>
						</tr>
						<c:forEach items="${ficha.exercicios}" var="exercicio">
							<c:if test="${exercicio.seriePertencente == 'E'}">
								<tr>

									<td></td>
									<td>${exercicio.exercicio_Aparelho.aparelho.nomeAparelho}</td>
									<td>${exercicio.exercicio_Aparelho.aparelho.aparelhoId}</td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</form:form>
	<div class="container">



<!--                                        FORM           adicionarExercicioFicha                         -->



		<form:form id="contact"
			action="${s:mvcUrl('IC#adicionarExercicioFicha').arg(0 , usuario.id).arg(1 , ficha.fichaId).build()}"
			method="post">
			
			<!-- .arg(2 , exercicio.exercicioId) -->
			
			<!-- AAAAAAAAAAAAAAAAAAAAA -->
		<h3>Adicionar Exercício</h3>
			<fieldset>
				<div>
					<select name='exercicio.exercicioId'>
						<option value="${selected}" selected>${selected}</option>
						<c:forEach items="${exercicios}" var="exercicio">
							<option value="${exercicio.exercicioId}">${exercicio.nomeExercicio}</option>
						</c:forEach>
					</select><br>
				</div>
			</fieldset>
			<h3>Adicionar Aparelho</h3>
			<fieldset>
				<div>
					<select name='aparelho.aparelhoId'>
						<option value="${selected}" selected>${selected}</option>
						<c:forEach items="${aparelhos}" var="aparelho">
							<option value="${aparelho.aparelhoId}">${aparelho.nomeAparelho}</option>
						</c:forEach>
					</select><br>
				</div>
			</fieldset>


			<!-- AAAAAAAAAAAAAAAAAAAAA -->


		
<%-- 			<fieldset>
				<div>
					<label>Exercicio</label> <select name='exercicios'>
						<option value="${selected}" selected>${selected}</option>
						<c:forEach items="${exercicios}" var="exercicio">
							<option value="${exercicio}">${exercicio.nomeExercicio}</option>
						</c:forEach>

					</select> <br>
				</div>
			</fieldset> --%>

			<%-- 			<fieldset>
				<div>
					<label>Exercicio Aparelho</label> <select name='exercicio_Aparelhos'>
						<option value="${selected}" selected>${selected}</option>
						<c:forEach items="${exercicios}" var="exercicio_Aparelho">
						
							<option value="${inteiro}">${exercicio_Aparelho.ExercicioAparelhoId}</option>
						</c:forEach>

					</select> <br>
				</div> 
			</fieldset>--%>

			<fieldset>
				<div>
					<label>Série</label> <select name='seriesPertencentes'>
						<option value="${selected}" selected>${selected}</option>
						<c:forEach items="${seriesPertencentes}" var="serieP">
							<option value="${ficha.serie}">${serieP}</option>
						</c:forEach>
					</select>
				</div>
			</fieldset>
			<fieldset>
				<div>
					<label>Repetições</label>
					<td><input name="repeticoes" type="number" step="1" min="1"
						value=""></td>
				</div>
			</fieldset>

			<fieldset>
				<div>
					<label>Carga</label>
					<td><input name="carga" type="number" step="0.5" min="1"
						value=""></td>
				</div>
			</fieldset>
			<fieldset>
				<div>
					<label>Tempo descanso</label> <input name="tempoDeDescanso"
						type="number" step="1" value="1">
				</div>
			</fieldset>
			<input name="text" type="hidden" value="${ficha.fichaId}">
			<button name="submit" type="submit" id="contact-submit"
				data-submit="...Sending">Adicionar</button>
		</form:form>
	</div>

	<c:import url="../footer.jsp" />

	<!-- JavaScript -->
	<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/scripts.js"></script>
	<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
</body>
</html>