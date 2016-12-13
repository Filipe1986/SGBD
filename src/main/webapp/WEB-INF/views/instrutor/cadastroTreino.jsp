<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- css -->

        <link href="<c:url value="/resources/css/bootstrap.min.css" />"
              rel="stylesheet" type="text/css">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
              type="text/css">


        <title>Sistema FJM - Criar Ficha de Treino</title>

    </head>
    <body>

        <c:import url="../head.jsp" />
        <div class="container ">

            <form:form id="contact"
                       action="${s:mvcUrl('IC#cadastrandoCabecalhoFicha').arg(0 , ficha.usuario.id).build()}"
                       method="post">

			
                <h2>Aluno: ${ficha.usuario.nome}</h2>


                Instrutor: 
                <select name='instrutor.id'>
                    <option value="${selected}" selected>${selected}</option>
                    <c:forEach items="${instrutores}" var="instrutor">

                        <option value="${instrutor.id}">${instrutor.nome}</option>
                    </c:forEach>
                </select>
                <br>


                Serie: 
                <select name='serie'>
                    <option value="${selected}" selected>${selected}</option>
                    <c:forEach items="${series}" var="serie">

                        <option value="${serie}">${serie}</option>
                    </c:forEach>
                </select><br> 

                Objetivo: 
                <select name='objetivo'>

                    <option value="${selected}" selected>${selected}</option>
                    <c:forEach items="${objetivos}" var="objetivo">

                        <option value="${objetivo}">${objetivo}</option>

                    </c:forEach>
                </select>

                <fieldset>

                    <div class="form-group">
                        <label>Frequencia Semanal</label> <input type="number" min="1"
                                                                 max="7" value="5" class="form-control" name="frequenciaSemanal">
                        <span class='msg-erro msg-data'></span>
                    </div>
                </fieldset>

                <fieldset>
                    <div class="form-group">
                        <label>Tempo Disponível</label> <input type="time"
                                                               name="tempoDisponivel" step="300" value="01:00" id="hora">
                        <span class='msg-erro msg-data'></span>

                    </div>
                </fieldset>

                <fieldset>

                    <div class="form-group">
                        <label for="dataInicial">Data Inicial</label> <input type="date"
                                                                             class="form-control" maxlength="10" value="" name="dataInicial">
                        <span class='msg-erro msg-data'></span>
                    </div>
                </fieldset>

                <fieldset>
                    <div class="form-group">
                        <label for="dataFinal">Data Final</label> <input type="date"
                                                                         class="form-control" maxlength="10" name="dataFinal"> <span
                                                                         class='msg-erro msg-data'></span>
                    </div>
                </fieldset>
                <fieldset>
                    <button name="submit" type="submit" id="contact-submit"
                            data-submit="...Sending">Inserir Exercicios</button>
                </fieldset>
            </form:form>
        </div>


        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>