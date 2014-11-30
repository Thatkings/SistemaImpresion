﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rServicios.aspx.cs" Inherits="SistemaImpresion.rServicios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registro de Servicios - Print System ::.</title>
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
                            <h2 class="auto-style1">Registro de Servicios</h2>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div style="height: 627px">
                            <div style="width: 652px; height: 549px; z-index: 1; left: 377px; top: 276px; position: absolute;">
                                <br />
                                <br />
                                <br />
                                <div style="height: 61px; width: 400px;">
                                    <asp:Label ID="NombreLabel" runat="server" Text="Nombre" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="NombreTextBox" runat="server" Width="283px"></asp:TextBox>
                                </div>
                                <div style="height: 111px; width: 400px;">
                                    <asp:Label ID="DescripcionLabel" runat="server" Text="Descripcion" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="DescripcionTextBox" runat="server" Width="283px" Height="77px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 0px; top: 231px; position: absolute;">
                                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 100px; top: 231px; position: absolute;">
                                    <asp:Button ID="ConsultarButton" runat="server" Text="Consultar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 200px; top: 231px; position: absolute;">
                                    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 300px; top: 231px; position: absolute;">
                                    <asp:Button ID="EliminarButton" runat="server" Text="Eliminar" />
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