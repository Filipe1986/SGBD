<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema FJM -  - Cadastro de Aluno</title>
        <!-- CSS -->
        <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
        <link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <c:import url="../head.jsp" />

        <div id="a" class="alert alert-success fade in">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>${sucesso}</strong>
        </div>

        <div id="cadastro" class="container">
            <div class="row-fluid">
                <div class="col-md-7"></div>
                <div class="col-md-5">
                    <form:form id="contact" action="${s:mvcUrl('UC#cadastrandoUsuario').build()}"  method="POST">

                        <!-- 
                        <label>Foto</label>
                        <div class="row">
                            <label for="nome">Selecionar Foto</label>
                            <div class="col-md-2">
                                <a href="#" class="thumbnail"> 
                                    <img src="img/padrao.jpg" height="190" width="150" id="foto-cliente">
                                </a>
                            </div>
                            <input type="file" name="CaminhoFoto" id="foto" value="CaminhoFoto">
                        </div>
                        -->

                        <h3>Cadastro de Aluno</h3>

                        <div class="form-group">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" name="nome">
                        </div>

                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="email" class="form-control" name="email">
                        </div>

                        <div class="form-group">
                            <label for="cpf">CPF</label>
                            <input type="text" class="form-control" maxlength="14" name="cpf">
                        </div>

                        <div class="form-group">
                            <label for="data_nascimento">Data de Nascimento</label>
                            <input type="date" class="form-control" maxlength="10" name="dataNascimento">
                        </div>

                        <div class="form-group">
                            <label for="celular">Celular</label>
                            <input type="tel" class="form-control" maxlength="13" name="celular">
                        </div>

                        <div class="form-group">
                            <label for="sexo">Status</label>
                            <c:forEach items="${status}" var="statusHtml">
                                <div>
                                    <input type="radio" name="status" value="${statusHtml}"> ${statusHtml}
                                </div>
                            </c:forEach>
                        </div>

                        <div class="form-group">
                            <label for="sexo">Sexo</label>
                            <c:forEach items="${sexo}" var="sexoHtml">
                                <div>
                                    <input type="radio" name="sexo" value="${sexoHtml}"> ${sexoHtml}
                                </div>
                            </c:forEach>
                        </div>

                        <div class="form-group">
                            <label for="nome">Senha</label>
                            <input type="password" class="form-control" name="senha">
                        </div>

                        <div class="form-group">
                            <label for="nome">Confirmar senha</label>
                            <input type="password" class="form-control" name="ConfirmaSenha">
                        </div>

                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form:form>
                </div>
            </div>
        </div>

        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>

    </body>
</html>