<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rInformeEmpleado.aspx.cs" Inherits="SistemaImpresion.rInformeEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registro de Informe Semanal de Empleado - Print System ::.</title>
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
                <p><em style="z-index: 1; left: 8px; top: -3px; position: absolute">El mejor sistema para su inventario de impresiones.</em></p>
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
                        <div style="height: 80px">
                            <h2 class="auto-style1">Registro de Informe Semanal de Empleado</h2>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div style="height: 627px">
                            <div style="width: 652px; height: 549px; z-index: 1; left: 377px; top: 276px; position: absolute;">
                                <br />
                                <br />
                                <br />
                                <div style="height: 35px; width: 400px; font-weight: 700;">
                                    <asp:Label ID="FechaLabel" runat="server" Text="Fecha" Style="font-size: large"></asp:Label>
                                </div>
                                <div style="height: 40px; width: 465px;">
                                    <asp:Label ID="DesdeLabel" runat="server" Text="Desde" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="DesdeTextBox" runat="server" TextMode="Date" Width="145px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="HastaLabel" runat="server" Text="Hasta" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="HastaTextBox" runat="server" TextMode="Date" Width="145px"></asp:TextBox>
                                 </div>
                                <div style="height: 61px; width: 400px;">
                                    <asp:Label ID="FechaInformeLabel" runat="server" Text="Fecha de Informe" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="FechaInformeTextBox" runat="server" TextMode="Date" Width="145px"></asp:TextBox>
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
