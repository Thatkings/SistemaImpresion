<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="SistemaImpresion.Main1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>.:: Registros - Print System ::.</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div id="page">
            <div>
                <div style="height: 687px">
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
                        <br />
                        <div style="z-index: 1; left: 238px; top: 313px; height: 160px; width: 674px">
                            <ul>
                                <li><a href="rUsuarios.aspx">
                                    <h3>Usuario</h3>
                                </a>
                                </li>
                                <br />
                                <li><a href="rServicios.aspx">
                                    <h3>Servicio</h3>
                                </a>
                                </li>
                                <br />
                                <li><a href="rVentas.aspx">
                                    <h3>Venta</h3>
                                </a>
                                </li>
                                <br />
                                <li><a href="rInformeDiario.aspx">
                                    <h3>Informe Diario</h3>
                                </a>
                                </li>
                                <br />
                                <li><a href="rInformeEmpleado.aspx">
                                    <h3>Informe de Empleado</h3>
                                </a>
                                </li>
                                <br />
                                <li><a href="rInformeGeneral.aspx">
                                    <h3>Informe General</h3>
                                </a>
                                </li>
                                <br />
                            </ul>
                        </div>
                    </div>
                </div>
                <div style="clear: both;"></div>
            </div>
        </div>
    </div>
</asp:Content>
