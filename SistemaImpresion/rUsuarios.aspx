<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="SistemaImpresion.rUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registro de Usuarios - Print System ::.</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
                        <li><a href="Default.aspx">Inicio</a></li>
                        <li class="current_page_item"><a href="#" class="first">Registros</a></li>
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
                                <h1>Registro de Usuarios</h1></div>
                        <br /><br /><br />
                            <div style="height: 627px">
                                <div style="width: 652px; height: 549px; z-index: 1; left: 377px; top: 276px; position: absolute;">
                                <br /><br /><br />
                               <div style="height: 41px; width: 385px;">
                                   <asp:Label ID="NombreLabel" runat="server" Text="Nombre" style="font-size: medium"></asp:Label>
                                   &nbsp;&nbsp;&nbsp;
                                   <asp:TextBox ID="NombreTextBox" runat="server" Width="215px"></asp:TextBox>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:CheckBox ID="ActivoCheckBox" runat="server" Checked="True" Text="Activo/a" />
                                </div>
                                <div style="height: 41px; width: 385px;">
                                    <asp:Label ID="NicknameLabel" runat="server" Text="Nickname" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="NicknameTextBox" runat="server" Width="308px"></asp:TextBox>
                                </div>
                                <div style="height: 41px; width: 385px;">
                                    <asp:Label ID="ClaveLabel" runat="server" Text="Contraseña" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="ContraseñaTextBox" runat="server" Width="299px"></asp:TextBox>
                                </div>
                                <div style="height: 41px; width: 385px;">
                                    <asp:Label ID="ConfirmarClaveLabel" runat="server" Text="Confirmar Contraseña" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:TextBox ID="ConfirmarClaveTextBox" runat="server" Width="245px"></asp:TextBox>
                                </div>
                                <div style="height: 41px; width: 385px;">
                                    <asp:Label ID="PreguntaLabel" runat="server" Text="Pregunta de Seguridad" style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="PreguntaDropDownList" runat="server" Width="245px">
                                    </asp:DropDownList>
                                </div>
                                <div style="height: 41px; width: 385px;">
                                    <asp:Label ID="RespuestaLabel" runat="server" Text="Respuesta" style="font-size: medium"></asp:Label>
&nbsp;&nbsp;
                                    <asp:TextBox ID="RespuestaTextBox" runat="server" Width="306px"></asp:TextBox>
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