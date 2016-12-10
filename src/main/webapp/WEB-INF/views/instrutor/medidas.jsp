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


        <title>Sistema FJM - Cadastro de Medidas</title>
    </head>

    <body>
        <c:import url="../head.jsp" />
        <div class="container">


            <form:form id="contact"
                       action="${s:mvcUrl('IC#cadastrandoNovasMedidas').arg(0 , usuario.id).build()}"
                       method="POST">

                <h3>Cadastro de Medidas</h3>
                <h2>Aluno: ${usuario.nome}</h2>

                <fieldset>

                    <div class="form-group">
                        <label >Data</label> <input
                            type="date" class="form-control" maxlength="10" name="dataMedicao"
                            > <span class='msg-erro msg-data'></span>


                    </div>
                </fieldset>

                <fieldset>

                    <div class="form-group">
                        <label >Altura</label> <input type="number"
                                                      step="0.01"  name="altura">
                        <label >m</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Peso</label> <input type="number" step="0.01"  name="peso">
                        <label >Kg</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Cintura</label> <input type="number"
                                                       step="0.01"  name="cintura">
                        <label >cm</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Torax</label> <input type="number"
                                                     step="0.01"  name="torax">
                        <label >cm</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Quadril</label> <input type="number"
                                                       step="0.01" value="1.60" name="quadril">
                        <label >cm</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Anti braço esquerdo</label> <input
                            type="number" step="0.01" value="1.60" name="anteBracoEsquerdo">
                        <label >cm</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label>Antebraço direito</label> <input
                            type="number" step="0.01" value="1.60" name="anteBracoDireito" >
                        <label >cm</label> 
                    </div>
                </fieldset>

                <fieldset>

                    <div class="form-group">
                        <label for="data_nascimento">Braço esquerdo</label> <input
                            type="number" step="0.01" value="1.60" name="bracoEsquerdo" >
                        <label >cm</label> 
                    </div>
                </fieldset>

                <fieldset>

                    <div class="form-group">
                        <label for="data_nascimento">Braço direito</label> <input
                            type="number" step="0.01" value="1.60" name="bracoDireito" >
                        <label >cm</label> 
                    </div>
                </fieldset> 
                <fieldset>

                    <div class="form-group">
                        <label for="data_nascimento">Coxa esquerda</label> <input
                            type="number" step="0.01" value="1.60" name="coxaEsquerda">
                        <label >cm</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Coxa direita</label> <input
                            type="number" step="0.01" value="1.60" name="coxaDireita">
                        <label >cm</label> 
                    </div>
                </fieldset>

                <fieldset>

                    <div class="form-group">
                        <label >Panturilha esquerda</label> <input
                            type="number" step="0.01" value="1.60" name="panturilhaEsquerda">
                        <label >cm</label> 
                    </div>
                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label >Panturilha direita</label> <input
                            type="number" step="0.01" value="1.60" name="panturilhaDireita">
                        <label >cm</label> 
                    </div>
                </fieldset>



                <button type="submit" class="btn btn-primary">Gravar</button>


            </form:form>
        </div>


        <c:import url="../footer.jsp" />

        <!-- JavaScript -->
        <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/js/scripts.js"></script>
        <script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
    </body>
</html>