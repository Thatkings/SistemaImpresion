<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rInformeGeneral.aspx.cs" Inherits="SistemaImpresion.rInformeGeneral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>.:: Registro de Informe General - Print System ::.</title>
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
                            <h2 class="auto-style1">Registro de Informe General</h2>
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
                                        <br />
                                        <asp:TextBox ID="DesdeTextBox" runat="server" Width="170px" TextMode="Date"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="HastaTextBox" runat="server" Width="170px" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 70px; width: 695px">
                                    <div style="height: 29px; width: 199px">
                                        <span class="auto-style2"><strong>Conteos</strong></span>
                                    </div>
                                    <div style="height: 41px; width: 228px;">
                                        <asp:Label ID="ConteoInicialLabel" runat="server" Text="Inicial" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ConteoInicialTextBox" placeholder="Conteo Inicial" runat="server" Width="149px" CssClass="auto-style6"></asp:TextBox>
                                    </div>
                                    <div style="height: 44px; width: 172px; z-index: 1; left: 209px; top: 151px; position: absolute;">
                                        <asp:Label ID="ConteoFinalLabel" runat="server" Text="Final" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ConteoFinalTextBox" runat="server" placeholder="Conteo Final" Width="149px" CssClass="auto-style7"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 94px; width: 374px;">
                                    <div>
                                        <h4 style="width: 367px; height: 21px; margin-bottom: 7px;" class="auto-style2">Total Impresión</h4>
                                    </div>
                                    <div style="height: 45px; width: 126px;">
                                        <asp:Label ID="TotalColor" runat="server" Text="Color" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="TotalColorTextBox" placeholder="Color" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 45px; width: 127px; z-index: 1; left: 130px; top: 243px; position: absolute; right: 471px;">
                                        <asp:Label ID="TotalBNLabel" runat="server" Text="Blanco/Negro" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="TotalBNTextBox" placeholder="Blanco/Negro" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                    <div style="height: 45px; width: 127px; z-index: 1; left: 260px; top: 243px; position: absolute; right: 341px;">
                                        <asp:Label ID="TotalDanadasLabel" runat="server" Text="Dañadas" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="TotalDanadasTextBox" placeholder="Dañadas" runat="server" Width="109px"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="height: 29px; width: 199px">
                                    <span class="auto-style2"><strong>Total</strong></span>
                                </div>
                                <div style="width: 577px; height: 51px;">
                                    <asp:Label ID="TotalDepositadoLabel" runat="server" Text="Depositado" Style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;                                        
                                        <asp:Label ID="DejadoCajaLabel" runat="server" Text="Dejado en Caja" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="DepositadoTextBox" placeholder="Depositado" runat="server" Width="109px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="DejadoCajaTextBox" placeholder="Dejado en Caja" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 131px; width: 659px">
                                    <div>
                                        <h4 style="width: 400px; height: 21px; z-index: 1; left: 0px; top: 368px; position: absolute;" class="auto-style2">Otros</h4>
                                    </div>
                                    <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 418px; position: absolute;">
                                        <asp:Label ID="ServicioLabel" runat="server" Text="Servicio" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="ServicioDropDownList" runat="server" CssClass="auto-style5" Width="196px">
                                        </asp:DropDownList>
                                    </div>
                                    <div style="height: 60px; width: 304px; z-index: 1; left: 210px; top: 416px; position: absolute;">
                                        <asp:Label ID="ObservacionLabel" runat="server" Text="Observación" Style="font-size: medium"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="ObservacionTextBox" placeholder="Observación..." runat="server" Width="284px" CssClass="auto-style4"></asp:TextBox>
                                    </div>
                                </div>

                                <div style="height: 61px; width: 100px; z-index: 1; left: 0px; top: 490px; position: absolute;">
                                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 107px; top: 490px; position: absolute;">
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
