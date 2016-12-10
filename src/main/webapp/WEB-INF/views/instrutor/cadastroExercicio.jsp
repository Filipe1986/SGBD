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


        <title>Sistema FJM - Cadastro de Exercício</title>



    </head>


    <body>
        <c:import url="../head.jsp" />
        <div class="container">



            <form:form id="contact"
                       action="${s:mvcUrl('IC#cadastrandoExercicio').build()}" method="post">
                <h3>Cadastro de Exercicio</h3>


                <fieldset>
                    <div class="form-group">
                        <label for="nomeAparelho">Nome</label> <input type="text"
                                                                      class="form-control" name="nomeAparelho"
                                                                      placeholder="Infome o Nome do aparelho"> <span
                                                                      class='msg-erro msg-nome'></span>
                    </div>
                </fieldset>
                <fieldset>
                    <button name="submit" type="submit" id="contact-submit"
                            data-submit="...Sending">Cadastrar Aparelho</button>
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
