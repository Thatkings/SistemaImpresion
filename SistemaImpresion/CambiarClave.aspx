<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambiarClave.aspx.cs" Inherits="SistemaImpresion.CambiarClave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Cambiar Contraseña - Print System ::.</title>
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
                        <li><a href="Principal.aspx">Empezar</a></li>
                    </ul>
                </div>
                <!-- end #menu -->
                <!-- end #header -->
                <!-- end #header-wrapper -->

                <div id="page">
                    <div>
                        <div style="height: 80px">
                            <h2 class="auto-style1">Cambiar Contraseña</h2>
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
                                    <asp:Label ID="ClaveAnteriorLabel" runat="server" Text="Contraseña Anterior" Style="font-size: medium"></asp:Label>
                                    <asp:TextBox ID="ClaveTextBox" runat="server" Width="283px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 400px;">
                                    <asp:Label ID="ClaveNuevaLabel" runat="server" Text="Nueva Contraseña" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ClaveNuevaTextBox" runat="server" Width="283px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 400px;">
                                    <asp:Label ID="ConfirmarClaveLabel" runat="server" Text="Confirmar Contraseña" Style="font-size: medium"></asp:Label>
                                    <asp:TextBox ID="ConfirmarClaveTextBox" runat="server" Width="283px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 0px; top: 231px; position: absolute;">
                                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 100px; top: 231px; position: absolute;">
                                    <asp:Button ID="CancelarButton" runat="server" Text="Cancelar" />
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
