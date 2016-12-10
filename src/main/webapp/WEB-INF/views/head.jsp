<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<header>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#myNavbar">
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<c:url value='/'/>">SISTEMA FJM</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<c:url value='/'/>">Início</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Listas <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value='/instrutor/listaUsuarios '/>">Lista de Usuários</a></li>
                            <li><a href="<c:url value='/instrutor/listaInstrutor '/>">Lista de Instrutores</a></li>
                            <li><a href="<c:url value='/instrutor/listaFichas'/>">Lista de Fichas</a></li>
                            <li><a href="<c:url value='/instrutor/listaExercicios'/>">Lista de Exercícios</a></li>
                             <li><a href="<c:url value='/instrutor/listaMedidas'/>">Lista de Medidas</a></li>
                             
                        </ul></li>
                    <li><a href="<c:url value='/instrutor/cadastroAparelho'/>">Inserir aparelho e exercício</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="glyphicon glyphicon-user"></span> Cadastre-se <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value='/usuario/cadastroUsuario'/>">Criar conta de aluno</a></li>
                            <li><a href="<c:url value='/instrutor/cadastro'/>">Criar conta de instrutor</a></li>
                        </ul></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="glyphicon glyphicon-log-in"></span> Login<span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <div class="container-fluid">
                                <form>
                                    <div class="form-group">
                                        <label for="email">Email:</label>
                                        <input type="email" class="form-control" id="email">
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Senha:</label>
                                        <input type="password" class="form-control" id="pwd">
                                    </div>
                                    <div class="form-group checkbox">
                                        <label>
                                            <input type="checkbox"> Lembrar senha
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-default">Enviar</button>
                                </form>
                            </div>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
