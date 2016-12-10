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


        <title>Sistema FJM - Cadastro de Aparelho</title>



    </head>
    <body>
        <c:import url="../head.jsp" />

        <div class="container">
            <div class="col-lg-22" >



                <form:form id="contact"
                           action="${s:mvcUrl('IC#cadastrandoAparelho').build()}" method="post">
                    <h3>Cadastro de aparelho</h3>

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
                    <p class="copyright">
                        Designed by <a href="" target="_blank" title="">Filipe</a>
                    </p>
                </form:form>


                <div >
                    <form:form id="contact" action="${s:mvcUrl('IC#cadastrandoExercicio').build()}"
                               method="post">
                        <h3>Cadastro de Exercicio</h3>


                        <fieldset>
                            <div class="form-group">
                                <label for="nomeAparelho">Nome</label> <input type="text"
                                                                              class="form-control" name="nomeExercicio"
                                                                              placeholder="Infome o Nome do Exercício"> <span
                                                                              class='msg-erro msg-nome'></span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <button name="submit" type="submit" id="contact-submit"
                                    data-submit="...Sending">Cadastrar Exercício</button>
                        </fieldset>
                        <p class="copyright">
                            Designed by <a href="" target="_blank" title="">Filipe</a>
                        </p>
                    </form:form>
                </div>

                <div>
                    <form:form id="contact"
                               action="${s:mvcUrl('IC#cadastrandoExercicioAparelho').build()}" method="post">
                        <h3>Cadastro de Exercicio Aparelho</h3>


                        <fieldset>
                            <div class="form-group">
                                <label>Nome</label> <input type="text"
                                                           class="form-control" name="nomeExercicio"
                                                           placeholder="Infome o Nome do Exercício no aparelho"> <span
                                                           class='msg-erro msg-nome'></span>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div >
                                <select name='exercicio.exercicioId'>
                                    <option value="${selected}" selected>${selected}</option>
                                    <c:forEach items="${exercicios}" var="exercicio">
                                        <option value="${exercicio.exercicioId}">${exercicio.nomeExercicio}</option>
                                    </c:forEach>
                                </select> <br>
                            </div>
                        </fieldset>
                        <fieldset>
                            <div>
                                <select name='aparelho.aparelhoId'>
                                    <option value="${selected}" selected>${selected}</option>
                                    <c:forEach items="${aparelhos}" var="aparelho">
                                        <option value="${aparelho.aparelhoId}">${aparelho.nomeAparelho}</option>
                                    </c:forEach>
                                </select> <br>
                            </div>
                        </fieldset>


                        <fieldset>
                            <button name="submit" type="submit" id="contact-submit"
                                    data-submit="...Sending">Cadastrar Exercício Aparelho</button>
                        </fieldset>

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