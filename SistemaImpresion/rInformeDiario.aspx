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
                        <div style="height: 80px">
                            <h2 class="auto-style1">Registro de Informe Diario</h2>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div style="height: 704px">
                            <div style="width: 728px; height: 628px; z-index: 1; left: 377px; top: 276px; position: absolute;">
                                <br />
                                <br />
                                <br />
                                <div style="height: 45px; width: 400px; z-index: 1; left: 1px; top: 37px; position: absolute;">
                                    <asp:Label ID="FechaLabel" runat="server" Text="Fecha" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="NombreTextBox" runat="server" Width="170px" TextMode="Date"></asp:TextBox>
                                </div>
                                <div style="height: 194px; z-index: 1; left: 0px; top: 87px; position: absolute; width: 397px">
                                <div style="z-index: 1; left: 0px; top: 22px; position: absolute; height: 21px; width: 397px" ><span class="auto-style2"><strong>Páginas Impresas</strong></span>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 54px; position: absolute;">
                                    <asp:Label ID="ImpColorLabel" runat="server" Text="Color" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ImpColorTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 200px; top: 54px; position: absolute;">
                                    <asp:Label ID="ImpBNLabel" runat="server" Text="Blanco/Negro" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ImpBNTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 2px; top: 118px; position: absolute;">
                                    <asp:Label ID="ImpColorEmpLabel" runat="server" Text="Color Empleado" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ImpColorEmpTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 200px; top: 118px; position: absolute;">
                                    <asp:Label ID="ImpBNEmpLabel" runat="server" Text="Blanco/Negro Empleado" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="BNEmpTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                    </div>
                                <div style="height: 196px; z-index: 1; left: 430px; top: 87px; position: absolute; width: 374px; margin-top: 0px;">
                                <div>
                                    <h4 style="width: 367px; z-index: 1; left: 0px; top: 0px; position: absolute; height: 21px;" class="auto-style2">Páginas Pagadas</h4>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 54px; position: absolute;">
                                    <asp:Label ID="PagColor" runat="server" Text="Color" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="PagColorTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 161px; z-index: 1; left: 200px; top: 54px; position: absolute;">
                                    <asp:Label ID="PagBNLabel" runat="server" Text="Blanco/Negro" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="PagBNTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 118px; position: absolute;">
                                    <asp:Label ID="DanadasLabel" runat="server" Text="Dañadas" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="DanadasTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                    </div>
                                <div style="height: 341px; z-index: 1; left: 0px; top: 265px; position: absolute; width: 382px">
                                <div>
                                    <h4 style="width: 400px; z-index: 1; left: 0px; top: 0px; position: absolute; height: 21px;" class="auto-style2">Cobrado</h4>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 54px; position: absolute;">
                                    <asp:Label ID="CobradoUsuarioLabel" runat="server" Text="Cobrado Usuario RD$" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="CobradoUsuarioTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 200px; top: 54px; position: absolute;">
                                    <asp:Label ID="TotalLabel" runat="server" Text="Total RD$" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TotalTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 116px; position: absolute;">
                                    <asp:Label ID="ServicioLabel" runat="server" Text="Servicios Cobrados RD$" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ServicioTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                    </div>
                                <div style="height: 341px; z-index: 1; left: 430px; top: 265px; position: absolute; width: 382px">
                                <div>
                                    <h4 style="width: 400px; z-index: 1; left: 0px; top: 0px; position: absolute; height: 21px;" class="auto-style2">Otros</h4>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 54px; position: absolute;">
                                    <asp:Label ID="ConteoImpLabel" runat="server" Text="Conteo de la Impresora" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ConteoImpTextBox" runat="server" Width="109px"></asp:TextBox>
                                </div>
                                <div style="height: 61px; width: 200px; z-index: 1; left: 0px; top: 116px; position: absolute;">
                                    <asp:Label ID="ObservacionLabel" runat="server" Text="Observación" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="ObservacionTextBox" runat="server" Width="367px" Height="127px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                    </div>

                                <div style="height: 61px; width: 100px; z-index: 1; left: 0px; top: 571px; position: absolute;">
                                    <asp:Button ID="GuardarButton" runat="server" Text="Guardar" />
                                </div>
                                <div style="height: 61px; width: 100px; z-index: 1; left: 100px; top: 571px; position: absolute;">
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
