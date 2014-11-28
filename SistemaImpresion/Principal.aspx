<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="SistemaImpresion.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>.:: Print System ::.</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.scrollzer.min.js"></script>
    <script src="js/jquery.scrolly.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-layers.min.js"></script>
    <script src="js/init.js"></script>

    <noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>
    <div id="wrapper">
        <form id="form1" runat="server">

            <!-- Header -->
            <section id="header" class="skel-layers-fixed">
                <header>
                    <span class="image avatar">
                        <img src="images/avatar.jpg" alt="" /></span>
                    <h1 id="logo"><a href="#">OCD</a></h1>
                    <p></p>
                    <h5><i>OVALLES CALDERÓN DEVELOPERS</i></h5>
                </header>
                <nav id="nav">
                    <ul>
                        <li><a href="#one" class="active">Iniciar Sesión</a></li>
                        <li><a href="#two">Descripción de Print System</a></li>
                        <li><a href="#three">Acerca de Nosotros</a></li>
                        <li><a href="#four">Contáctenos</a></li>
                    </ul>
                </nav>
                <footer>
                    <ul class="icons">
                        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                        <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
                    </ul>
                </footer>
            </section>

            <!-- Main -->
            <div id="main">

                <!-- One -->
                <section id="one">
                    <div class="container">
                        <h3>Iniciar Sesión</h3>
                        <form method="post" action="#">
                            <div class="row uniform collapse-at-2">
                                <div class="6u">
                                    <input type="text" name="User" id="User" placeholder="Usuario" />
                                </div>
                            </div>
                            <div class="row uniform collapse-at-2">
                                <div class="6u">
                                    <input type="password" name="Clave" id="Clave" placeholder="Contraseña" />
                                    <a href="#" >¿Olvidó la contraseña?</a>
                                </div>
                            </div>
                            <div class="row uniform">
                                <div class="12u">
                                    <ul class="actions">
                                        <li>
                                            <asp:Button ID="EntrarButton" runat="server" class="special" Text="Entrar" OnClick="EntrarButton_Click" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>

                <!-- Two -->
                <section id="two">
                    <div class="container">
                        <h3>Descripción de Print System</h3>
                        <p>Aquí va información</p>
                    </div>
                </section>

                <!-- Three -->
                <section id="three">
                    <div class="container">
                        <header class="major">
                            <%--                            <h2>Print System</h2>--%>
                            <h3>Acerca de Nosotros</h3>
                        </header>
                        <p>Aquí va información.</p>
                    </div>
                </section>

                <!-- Four -->
                <section id="four">
                    <div class="container">
                        <h3>Contáctenos</h3>
                        <p>Aquí va información.</p>
                    </div>
                </section>
            </div>

            <!-- Footer -->
            <section id="footer">
                <div class="container">
                    <ul class="copyright">
                        <li>&copy; OCD. All rights reserved.</li>
                    </ul>
                </div>
            </section>
        </form>
    </div>
</body>
</html>
