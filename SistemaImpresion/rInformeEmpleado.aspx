<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rInformeEmpleado.aspx.cs" Inherits="SistemaImpresion.rInformeSemEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registro de Informe de Empleado - Print System ::.</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style2 {
            font-size: large;
        }

        .auto-style4 {
        }

        .auto-style5 {
        }

        .auto-style6 {
        }

        .auto-style7 {
        }

        .auto-style8 {
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
                        <li><a href="Default.aspx">Inicio</a></li>
                        <li class="current_page_item"><a href="Registros.aspx" class="first">Registros</a></li>
                        <li><a href="Consultas.aspx">Consultas</a></li>
                        <li><a href="#">Acerca de</a></li>
                        <li><a href="#">Contactos</a></li>
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
                            <h2 class="auto-style1">Registro de Informe de Empleado</h2>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div style="height: 565px">
                            <div style="width: 728px; height: 515px; z-index: 1; left: 376px; top: 284px; position: absolute;">
                                <br />
                                <br />
                                <br />
                                <div>
                                    <div style="height: 29px; width: 199px">
                                        <span class="auto-style2"><strong>Fechas</strong></span>
                                    </div>
                                    <div style="width: 577px; height: 51px;">
                                        <asp:Label ID="DesdeLabel" runat="server" Text="Desde" Style="font-size: medium"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        
                                        <asp:Label ID="HastaLabel" runat="server" Text="Hasta" Style="font-size: medium"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                        
                                        <asp:Label ID="Informe" runat="server" Text="Informe" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="DesdeTextBox" runat="server" Width="170px" TextMode="Date"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="HastaTextBox" runat="server" Width="170px" TextMode="Date"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="InformeTextBox" runat="server" Width="170px" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 70px; width: 695px">
                                    <div style="height: 29px; width: 199px">
                                        <span class="auto-style2"><strong>Datos del Empleado</strong></span>
                                    </div>
                                    <div style="height: 41px; width: 228px;">
                                        <asp:Label ID="NombreLabel" runat="server" Text="Nombre" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="NombreTextBox" placeholder="Nombre del Empleado" runat="server" Width="212px" CssClass="auto-style6"></asp:TextBox>
                                    </div>
                                    <div style="height: 44px; width: 170px; z-index: 1; left: 414px; top: 151px; position: absolute;">
                                        <asp:Label ID="CargoLabel" runat="server" Text="Cargo" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="CargoTextBox" placeholder="Cargo" runat="server" Width="136px" CssClass="auto-style8"></asp:TextBox>
                                    </div>
                                    <div style="height: 44px; width: 172px; z-index: 1; left: 235px; top: 151px; position: absolute;">
                                        <asp:Label ID="DepartamentoLabel" runat="server" Text="Departamento" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="DepartamentoTextBox" runat="server" placeholder="Departamento" Width="149px" CssClass="auto-style7"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 94px; width: 374px;">
                                    <div>
                                        <h4 style="width: 367px; height: 21px; margin-bottom: 7px;" class="auto-style2">Páginas Impresas</h4>
                                    </div>
                                    <div style="height: 45px; width: 126px;">
                                        <asp:Label ID="PagColor" runat="server" Text="Color" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="PagColorTextBox" placeholder="Color" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 45px; width: 127px; z-index: 1; left: 130px; top: 243px; position: absolute; right: 471px;">
                                        <asp:Label ID="PagBNLabel" runat="server" Text="Blanco/Negro" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="PagBNTextBox" placeholder="Blanco/Negro" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                </div>

                                <div style="height: 131px; width: 659px">
                                    <div>
                                        <h4 style="width: 400px; height: 21px; z-index: 1; left: 0px; top: 279px; position: absolute;" class="auto-style2">Otros</h4>
                                    </div>
                                    <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 334px; position: absolute;">
                                        <asp:Label ID="ServicioLabel" runat="server" Text="Servicio" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="ServicioDropDownList" runat="server" CssClass="auto-style5" Width="196px">
                                        </asp:DropDownList>
                                    </div>
                                    <div style="height: 60px; width: 304px; z-index: 1; left: 210px; top: 333px; position: absolute;">
                                        <asp:Label ID="ObservacionLabel" runat="server" Text="Observación" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ObservacionTextBox" placeholder="Observación..." runat="server" Width="284px" CssClass="auto-style4"></asp:TextBox>
                                    </div>
                                </div>

                                <div style="height: 61px; width: 100px; z-index: 1; left: 0px; top: 404px; position: absolute;">
                                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 107px; top: 404px; position: absolute;">
                                    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" />
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
