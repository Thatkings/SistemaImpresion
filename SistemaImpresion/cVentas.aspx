﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="cVentas.aspx.cs" Inherits="SistemaImpresion.cVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>.:: Consulta de Ventas - Print System ::.</title>
    <style type="text/css">
        .auto-style2 {
        }

        .auto-style3 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="header">
        <div id="menu">
            <ul>
                <li><a href="Default.aspx">Inicio</a></li>
                <li><a href="Registros.aspx">Registros</a></li>
                <li class="current_page_item"><a href="Consultas.aspx" class="first">Consultas</a></li>
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
                        <h2 class="auto-style1">Consulta de Ventas</h2>
                        <br />
                        <br />
                        <br />
                        <br />
                        <div style="height: 551px">
                            <div style="width: 652px; height: 549px; z-index: 1; left: 377px; top: 276px; position: absolute;">
                                <br />
                                <br />
                                <br />
                                <div style="height: 61px; width: 611px;">
                                    <asp:Label ID="FiltroLabel" runat="server" Text="Filtro" Style="font-size: medium"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="CriterioLabel" runat="server" Text="Criterio" Style="font-size: medium"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="FiltroDropDownList" runat="server" Width="158px" CssClass="auto-style2">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="CriterioTextBox" placeholder="Criterio" runat="server" Width="283px"></asp:TextBox>
                                    &nbsp;&nbsp;
                                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" />
                                </div>
                                <div>

                                    <asp:GridView ID="VentasGridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style3" Height="140px" Width="389px">
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>

                                </div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
