<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SistemaImpresion.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/npm.js"></script>
    <noscrip>
        <link href="css/bootstrap-theme.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" />
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" />

    </noscrip>
    <style type="text/css">
        #form1 {
            height: 172px;
            width: 297px;
        }
        .auto-style1 {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 285px; width:315px; position:absolute; top: 276px; left: 560px;">
            
            <div style="width: 273px; height: 28px;">
                <asp:Label ID="UsuarioLabel" runat="server" Text="Usuario" style="font-weight: 700"></asp:Label>
            </div>
            <div style="height: 68px">
                <asp:TextBox ID="UserTextBox" Height="44px" Width="244px" runat="server" class="form-control" placeholder="Usuario"></asp:TextBox>
            </div>
            <div style="width: 273px; height: 28px;">
                <asp:Label ID="ClaveLabel" runat="server" Text="Contraseña" style="font-weight: 700"></asp:Label>
            </div>
            <div style="height: 112px">
                <asp:TextBox ID="PassTextBox" runat="server" class="form-control" type="password" placeholder="Contraseña" Height="44px" Width="244px"></asp:TextBox>
                <a href="rRecuperarClave.aspx"><span class="auto-style1">Recuperar Contraseña</span></a>
            </div>
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="EntrarButton" runat="server" Text="Entrar" class="btn btn-primary" OnClick="EntrarButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="LimpiarButton" runat="server" Text="Limpiar" class="btn btn-default" OnClick="LimpiarButton_Click" />
            </div>
        </div>
    </form>
</body>
</html>
