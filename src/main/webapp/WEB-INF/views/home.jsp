<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- css -->
        <link href="<c:url value="/resources/css/bootstrap.min.css" />"
              rel="stylesheet" type="text/css">

        <title></title>

        <style>

            body {
                font-family: 'Roboto', sans-serif;
                font-weight: normal;
                font-size: 14px;
                line-height: 30px;
                color: #5a5a5a;
            }

            .navbar {
                border-radius: 0 !important;
                margin-bottom: 0 !important;
            }

            .login {
                padding: 10px;
            }

            footer {
                margin-top: 20px;
                color: #fff;
            }

            footer a {
                color: #337ab7;
            }

            /* Carousel */

            .carousel {
                height: 640px;
            }

            .carousel-caption {
                z-index: 10;
            }

            .carousel .item {
                height: 640px;
                background-color: #777;
            }
            .carousel-inner > .item > img {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
            }

            /* Featurettes */

            .featurette-divider {
                margin: 80px 0;
            }

            /* Responsive CSS */

            @media (min-width: 768px) {

                .carousel-caption p {
                    margin-bottom: 20px;
                    font-size: 21px;
                    line-height: 1.4;
                }

                .featurette-heading {
                    font-size: 50px;
                }
            }

            @media (min-width: 992px) {
                .featurette-heading {
                    margin-top: 120px;
                }
            }

        </style>
    </head>
    <body>
        <c:import url="head.jsp" />

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide" src="https://1.bp.blogspot.com/-RiydK0xiKE8/WEdl1KPh8GI/AAAAAAAAAOE/5BW6J_EMunMaEkutCKEozir4ORgdhNlCgCPcB/s1600/1.jpg"
                         alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>ADEUS À FICHA DE PAPEL</h1>
                            <p>Solicitar uma ficha de treino nunca foi tão fácil. Com apenas alguns cliques, você pode solicitar um novo treino elaborado pelo seu treinador favorito.</p>
                            <p><a class="btn btn-lg btn-primary" href="<c:url value='/usuario/cadastroUsuario'/>" role="button">Crie sua conta de aluno</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="https://4.bp.blogspot.com/-xILEtki6OwU/WEdl1F8mF5I/AAAAAAAAAOE/26QqvRSsIMIA3wBQ36sHPcGRbhVo6efiwCPcB/s1600/2.jpg"
                         alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>PRESCRIÇÃO DE TREINOS ONLINE</h1>
                            <p>Instrutores podem elaborar programas de exercícios com mais agilidade em uma ficha de treino digital que pode ser acessada por seus alunos no celular.</p>
                            <p><a class="btn btn-lg btn-primary" href="<c:url value='/instrutor/cadastro'/>" role="button">Crie sua conta de instrutor</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="https://1.bp.blogspot.com/-AWepGbgz1-o/WEdl1H2RwsI/AAAAAAAAAOE/80XyM-HsJjsMzupOFqfkuznAjh-jUkXHgCPcB/s1600/3.jpg"
                         alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>CRIE SUAS PRÓPRIAS METAS</h1>
                            <p>Elabore suas próprias metas e acompanhe a sua evolução física. Registre suas medidas corporais e acompanhe o seu progresso diariamente.</p>
                            <p><a class="btn btn-lg btn-primary" href="<c:url value='/usuario/cadastroUsuario'/>" role="button">Crie sua conta de aluno</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container">
            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Prescrição de treinos online. <p class="text-muted">Adeus à ficha de papel.</p></h2>
                    <p class="lead">O sistema FJM permite agilizar o trabalho de prescrição de treinos. Instrutores podem elaborar programas de exercícios em fichas de treino digitais de forma rápida e prática.</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive center-block" src="https://1.bp.blogspot.com/-W-77Aqm0Fqs/WEdl1LAONkI/AAAAAAAAAOE/R9PXynKfFYAkOU7KbAPLF0TyYUDbeFIyACPcB/s1600/7.jpg"
                         alt="Prescrição de treinos online">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 col-md-push-5">
                    <h2 class="featurette-heading">Crie suas próprias metas. <p class="text-muted">Ajudamos você a cumpri-las</p></h2>
                    <p class="lead">Você pode criar quantas metas quiser e estabelecer seus próprios prazos. O sistema envia alertas para ajudar você a não se esquecer delas. </p>
                </div>
                <div class="col-md-5 col-md-pull-7">
                    <img class="featurette-image img-responsive center-block" src="https://4.bp.blogspot.com/-zHLyZoUsnP8/WEdl1MfKsFI/AAAAAAAAAOE/a4ybXkWzHNo9CG_HOM8iQWjMRvVeNXcvgCPcB/s1600/5.jpg"
                         alt="Crie suas próprias metas">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">Acompanhe sua evolução. <span class="text-muted">Veja de perto seu progresso.</span></h2>
                    <p class="lead">Registre suas medidas corporais diariamente e acompanhe a sua evolução física em relatórios personalizados.</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive center-block" src="https://4.bp.blogspot.com/-4f7yZOQcbfA/WEdl1Cj4noI/AAAAAAAAAOE/Rs8Kd4flx8sSvgCayH_BGUcxjVXn1qkbwCPcB/s1600/4.jpg"
                         alt="Acompanhe sua evolução">
                </div>
            </div>

            <hr class="featurette-divider">

        </div>  
        <c:import url="footer.jsp" />
    </body>
    <!-- Javascript -->
    <script type="text/javascript" src="./resources/js/jquery.min.js"></script>
    <script type="text/javascript" src="./resources/js/scripts.js"></script>
    <script type="text/javascript" src="./resources/js/bootstrap.min.js"></script>
</html>