<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!-- action="/FJM/instrutor/cadastrando" -->

<div class="row-fluid">
    <div class="col-md-7"></div>
    <div class="col-md-5">

        <form:form id="contact" action="${s:mvcUrl('IC#cadastrandoInstrutor').build()}" method="post" enctype="multipart/form-data">
            <h3>Cadastro de Instrutor</h3>

            <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" name="nome">
                <span class='msg-erro msg-nome'></span>
            </div>

            <fieldset>
                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="email" class="form-control" name="email">
                    <span class='msg-erro msg-email'></span>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label for="cpf">CPF</label>
                    <input type="text" class="form-control" maxlength="14" name="cpf">
                    <span class='msg-erro msg-cpf'></span>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label for="data_nascimento">Data de Nascimento</label>
                    <input type="date" class="form-control" maxlength="10" name="dataNascimento">
                    <span class='msg-erro msg-data'></span>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label for="telefone">Telefone</label>
                    <input type="tel" class="form-control" maxlength="12" name="telefone">
                    <span class='msg-erro msg-telefone'></span>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label>Celular</label>
                    <input type="tel" class="form-control" maxlength="12" name="celular">
                    <span class='msg-erro msg-telefone'></span>
                </div>
            </fieldset>

            <fieldset>
                <div>
                    <label>Sexo</label><br>
                    <c:forEach items="${sexo}" var="sexoHtml">
                        <input type="radio" name="sexo" value="${sexoHtml}"> ${sexoHtml}
                    </c:forEach>
                </div>
            </fieldset>

            <fieldset>
                <div>
                    <label>Formação</label>
                    <textarea rows="20" cols="20" name="formacao"></textarea>
                </div>
            </fieldset>

            <fieldset>
                <div>
                    <label>Especialização</label>
                    <textarea rows="20" cols="20" name="especializacao"></textarea>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label>Horário de entrada</label> 
                    <input id="hora" class="form-control" type="time" name="horario" value="13:00" >
                    <span class="msg-erro msg-data"></span>
                </div>
            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label for="nome">Senha</label>
                    <input type="password" class="form-control" name="senha">
                    <span class='msg-erro msg-nome'></span>
                </div>

            </fieldset>

            <fieldset>
                <div class="form-group">
                    <label for="nome">Confirmar senha</label>
                    <input type="password" class="form-control" name="ConfirmaSenha">
                    <span class='msg-erro msg-nome'></span>
                </div>
            </fieldset>

            <fieldset>
                <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Enviar</button>
            </fieldset>

        </form:form>

    </div>
</div>