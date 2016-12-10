<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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



        <table class="table table-bordered table-striped table-hover ">
            <thead>
                <tr>
                    <th><h4>Instrutor:
                            ${ficha.instrutor.nome}${instrutor.nome}</h4></th>

                    <th><h4>Data incio: ${ficha.dataInicial}</h4></th>

                    <th><h4>Data Final: ${ficha.dataFinal}</h4></th>

                    <th><h4>Tempo disponivel: ${ficha.tempoDisponivel}</h4></th>


                </tr>
            </thead>
        </table>

        <div class="container">
            <form:form id="contact"
                       action="${s:mvcUrl('IC#adicionarExercicioFicha').arg(0 , usuario.id).arg(1 , ficha.fichaId).build()}"
                       method="post">


                <h3>Adicionar Exercício</h3>

                <%-- 		<fieldset>
                        <div class="form-group">
                                <label>Nome</label> <input type="text" class="form-control"
                                        name="nomeExercicio"
                                        placeholder="Infome o Nome do Exercício no aparelho"> <span
                                        class='msg-erro msg-nome'></span>
                        </div>
                </fieldset> --%>



                <fieldset>
                    <div>
                        <label>Exercicio Aparelho</label>
                        <select name='exercicios'>
                            <option value="${selected}" selected>${selected}</option>
                            <c:forEach items="${exercicios}" var="exercicio">
                                <option value="${exercicio}">${exercicio.exercicio.nomeExercicio}${exercicio.aparelho.nomeAparelho}</option>
                            </c:forEach>

                        </select> <br>
                    </div>
                </fieldset>

                <fieldset>
                    <div>
                        <label>Série</label>
                        <select name='seriesPertencentes'>
                            <option value="${selected}" selected>${selected}</option>
                            <c:forEach items="${seriesPertencentes}" var="serie">
                                <option value="${seriePertencente}">${serie}</option>
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

                <%-- 		<fieldset>
                        <div>
                                <select name='aparelho.aparelhoId'>
                                        <option value="${selected}" selected>${selected}</option>
                                        <c:forEach items="${aparelhos}" var="aparelho">
                                                <option value="${aparelho.aparelhoId}">${aparelho.nomeAparelho}</option>
                                        </c:forEach>
                                </select> <br>
                        </div>
                </fieldset> --%>
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

        <c:forEach items="${seriesPertencentes}" var="serie">
            <table class="table table-bordered table-striped table-hover ">
                <thead>
                    <tr>

                        <th class="info">Série ${serie}</th>
                        <th>descando:</th>
                <tbody>

                    <tr>

                        <th>Nome Exercicio</th>
                        <th>Aparelho</th>

                        <th>Repetições</th>
                        <th>Carga</th>
                            <%-- 					<c:forEach items="${ficha.exerciciosAparelhos}" var="exercicio1">
                                    <p>${exercicio1}</p>
                                    <p>qualquer coisa</p>

                                        </c:forEach> --%>

                    </tr>
                </tbody>
            </tr>
        </thead>
    </table>

</c:forEach>


<c:import url="../footer.jsp" />

<!-- JavaScript -->
<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/scripts.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
</body>
</html>