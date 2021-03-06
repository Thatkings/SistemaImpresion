﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rRecuperarClave.aspx.cs" Inherits="SistemaImpresion.rRecuperarClave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Recuperar Contraseña - Print System ::.</title>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/npm.js"></script>
    <noscrip>
        <link href="css/bootstrap-theme.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" />
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    </noscrip>
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
                <p><em>El mejor sistema para su inventario de impresiones.</em></p>
            </div>
            <!-- end #logo -->
            <div id="header">
                <div id="menu">
                    <ul>
                        <li><a href="Index.aspx">Empezar</a></li>
                    </ul>
                </div>
                <!-- end #menu -->
                <!-- end #header -->
                <!-- end #header-wrapper -->

                    <div id="page">
                        <div>
                            <div style="height: 80px;">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <h2 class="auto-style1">Recuperar Contraseña</h2>
                            </div>
                            <br />
                            <br />
                            <br />
                            <div style="height: 565px">
                                <div style="width: 652px; height: 549px; z-index: 1; left: 377px; top: 285px; position: absolute;">
                                    <br />
                                    <br />
                                    <br />
                                    <div style="height: 61px; width: 400px;">
                                        <asp:Label ID="NicknameLabel" runat="server" Text="Nickname" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="NicknameTextBox" class="form-control" Height="30px" placheholder="Nombre de usuario" runat="server" Width="283px"></asp:TextBox>
                                    </div>
                                    <div style="height: 61px; width: 400px;">
                                        <asp:Label ID="PreguntaLabel" runat="server" Text="Pregunta de Seguridad" Style="font-size: medium"></asp:Label>
                                        <asp:DropDownList ID="PreguntaDropDownList" Height="30px" class="form-control" runat="server" Width="283px">
                                        </asp:DropDownList>
                                    </div>
                                    <div style="height: 63px; width: 400px;">
                                        <asp:Label ID="RespuestaLabel" runat="server" Text="Respuesta" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="RespuestaTextBox" class="form-control" Height="30px" placeholder="Respuesta de recuperación" runat="server" Width="283px"></asp:TextBox>
                                    </div>
                                    <div style="height: 61px; width: 100px; z-index: 1; top: 241px; position: absolute;">
                                        <asp:Button ID="RecupearButton" runat="server" class="btn btn-primary" Text="Recuperar" OnClick="RecupearButton_Click" />
                                    </div>
                                    <div style="height: 61px; width: 100px; z-index: 1; left: 100px; top: 241px; position: absolute;">
                                        <asp:Button ID="CancelarButton" runat="server" class="btn btn-danger" Text="Cancelar" OnClick="CancelarButton_Click" />
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
        </div>
    </form>
</body>
</html>
