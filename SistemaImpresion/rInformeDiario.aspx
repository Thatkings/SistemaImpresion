<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rInformeDiario.aspx.cs" Inherits="SistemaImpresion.rInformeDiario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registro de Informe Diario - Print System ::.</title>
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

        .auto-style3 {
        }
        .auto-style4 {}
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
                            <h2 class="auto-style1">Registro de Informe Diario</h2>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div style="height: 565px">
                            <div style="width: 728px; height: 515px; z-index: 1; left: 376px; top: 284px; position: absolute;">
                                <br />
                                <br />
                                <br />
                                <div style="height: 49px; width: 400px;">
                                    <asp:Label ID="FechaLabel" runat="server" Text="Fecha" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="FechaTextBox" runat="server" Width="170px" TextMode="Date" AutoPostBack="True" OnTextChanged="FechaTextBox_TextChanged"></asp:TextBox>
                                </div>
                                <div style="height: 74px; width: 695px">
                                    <div style="height: 29px; width: 199px">
                                        <span class="auto-style2"><strong>Páginas Impresas</strong></span>
                                    </div>
                                    <div style="height: 41px; width: 126px;">
                                        <asp:Label ID="ImpColorLabel" runat="server" Text="Color" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ImpColorTextBox" placeholder="Color" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 44px; width: 132px; z-index: 1; left: 261px; top: 120px; position: absolute;">
                                        <asp:Label ID="DanadasLabel" runat="server" Text="Dañadas" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="DanadasTextBox" placeholder="Dañadas" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 44px; width: 122px; z-index: 1; left: 130px; top: 120px; position: absolute;">
                                        <asp:Label ID="ImpBNLabel" runat="server" Text="Blanco/Negro" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ImpBNTextBox" runat="server" placeholder="Blanco/Negro" Width="109px"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 94px; width: 374px;">
                                    <div>
                                        <h4 style="width: 367px; height: 21px; margin-bottom: 7px;" class="auto-style2">Páginas Pagadas</h4>
                                    </div>
                                    <div style="height: 61px; width: 126px;">
                                        <asp:Label ID="PagColor" runat="server" Text="Color" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="PagColorTextBox" placeholder="Color" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 45px; width: 127px;  z-index: 1; left: 130px; top: 217px; position: absolute;">
                                        <asp:Label ID="PagBNLabel" runat="server" Text="Blanco/Negro" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="PagBNTextBox" placeholder="Blanco/Negro" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 97px; width: 511px">
                                    <div>
                                        <h4 style="width: 400px; z-index: 1; left: 0px; top: 260px; position: absolute; height: 21px;" class="auto-style2">Cobrado</h4>
                                    </div>

                                    <div style="height: 43px; width: 186px; z-index: 1; left: 179px; top: 311px; position: absolute;">
                                        <asp:Label ID="ServicioLabel" runat="server" Text="Servicios Cobrados RD$" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ServicioTextBox" placeholder="Servicios" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 42px; width: 124px; z-index: 1; left: 381px; top: 311px; position: absolute;">
                                        <asp:Label ID="TotalLabel" runat="server" Text="Total RD$" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="TotalTextBox" placeholder="Total" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 43px; width: 164px; z-index: 1; left: 0px; top: 311px; position: absolute;">
                                        <asp:Label ID="CobradoUsuarioLabel" runat="server" Text="Cobrado Usuario RD$" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="CobradoUsuarioTextBox" placeholder="Cobrado" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 122px; width: 659px">
                                    <div>
                                        <h4 style="width: 400px; height: 21px; z-index: 1; left: 0px; top: 357px; position: absolute;" class="auto-style2">Otros</h4>
                                    </div>
                                    <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 404px; position: absolute;">
                                        <asp:Label ID="ConteoImpLabel" runat="server" Text="Conteo de la Impresora" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ConteoImpTextBox" placeholder="Conteo" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 60px; width: 304px; z-index: 1; left: 210px; top: 404px; position: absolute;">
                                        <asp:Label ID="ObservacionLabel" runat="server" Text="Observación" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ObservacionTextBox" placeholder="Observación..." runat="server" Width="284px" CssClass="auto-style4"></asp:TextBox>
                                    </div>
                                </div>

                                <div style="height: 61px; width: 100px; z-index: 1; left: 0px; top: 477px; position: absolute;">
                                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" OnClick="GuardarButton_Click" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 107px; top: 477px; position: absolute;">
                                    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" OnClick="LimpiarButton_Click" />
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
