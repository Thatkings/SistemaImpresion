<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="SistemaImpresion.Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registros - Print System ::.</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <div id="logo">
                <h1>Print System</h1>
                <p><em style="z-index: 1; left: 221px; top: 86px; position: absolute">El mejor sistema para su inventario de impresiones.</em></p>
            </div>
            <!-- end #logo -->
            <div id="header">
                <div id="menu">
                    <ul>
                        <li><a href="Default.aspx">Inicio</a></li>
                        <li class="current_page_item"><a href="Registros.aspx" class="first">Registros</a></li>
                        <li><a href="#">Consultas</a></li>
                        <li><a href="#">Acerca de</a></li>
                        <li><a href="#">Contactos</a></li>
                    </ul>
                </div>
                <!-- end #menu -->
                <!-- end #header -->
                <!-- end #header-wrapper -->

                <div id="page">
                    <div>
                        <div style="height: 627px">
                            <div style="width: 674px; height: 337px;">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <h2 class="auto-style1">Registros</h2>
                                <br />
                                <br />
                                <br />
                                <div style="z-index: 1; left: 238px; top: 313px; position: absolute; height: 160px; width: 674px">
                                    <ul>
                                        <li><a href="rUsuarios.aspx"><h3>Usuario</h3></a>
                                    </li><br />
                                    <li><a href="rServicios.aspx"><h3>Servicio</h3></a>
                                    </li><br />                                        
                                    <li><a href="rEmpleados.aspx"><h3>Empleado</h3></a>
                                    </li><br />
                                    <li><a href="rVentas.aspx"><h3>Venta</h3></a>
                                    </li><br />
                                    <li><a href="rInformeDiario.aspx"><h3>Informe Diario</h3></a>
                                    </li><br />
                                    <li><a href="#"><h3>Informe Semanal de Empleado</h3></a>
                                    </li><br />
                                    <li><a href="#"><h3>Informe General</h3></a>
                                    </li><br />
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <!-- end #page -->

                <div id="footer-bgcontent">
                    <div id="footer">
                        <p>
                            Copyright  2014 - OCD. All rights reserved.
                        </p>
                    </div>
                </div>
                <!-- end #footer -->

            </div>
        </div>
    </form>
</body>
</html>
