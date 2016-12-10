<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- css -->
        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"
              type="text/css">
        <link href="<c:url value="/resources/css/style.css" />"
              rel="stylesheet" type="text/css">


        <title>Sistema FJM - Login </title>

    </head>
    <body>

        <c:import url="../head.jsp" />
        <div class="container">
            <form id="contact" class="form-horizontal">
                <div class="control-group">
                    <label class="control-label" for="inputEmail">E-mail</label>
                    <div class="controls">
                        <input type="email" id="inputEmail" name="email" value="email" placeholder="Digite o seu e-mail..." />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">Senha</label>
                    <div class="controls">
                        <input id="inputPassword" type="password" name="senha"
                               placeholder="Digite a sua senha..." />
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox"><input type="checkbox" /> Lembrar
                            senha</label>
                        <button class="btn" type="submit">Acessar</button>
                    </div>
                </div>
            </form>

        </div>

        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>