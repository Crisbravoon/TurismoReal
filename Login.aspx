<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Main.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="Recurso/Css/Estilos.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    
    <div class="login mb-4">
        <img src="/Recurso/Img/logo_blanco.png" alt="" class="imgLogin"/>
        <br />
        <asp:Label class="h2 fw-bold text-center py-5 text-white" ID="lblBienvenida" runat="server">Bienvenido/a al sistema</asp:Label>
        <p></p>
        <form runat="server">
            <div class="mb-4">
                <asp:Label class="text-white" ID="lblCorreo" runat="server" Text="Correo Electrónico"></asp:Label>
                <asp:TextBox ID="txtCorreo" CssClass="form-control" runat="server" placeholder="Correo"></asp:TextBox>
            </div>
            <div class="mb-4">
                <asp:Label CssClass="text-white" ID="lblPass" runat="server" Text="Contraseña:"></asp:Label>
                <asp:TextBox ID="txtPass" CssClass="form-control" TextMode="Password" runat="server" placeholder="Contraseña"></asp:TextBox>
                <asp:Label CssClass="text-white" ID="lblError" Text="" runat="server" />
            </div>
            <div class="d-grid">
                <asp:Button class="text-white" ID="btnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
            </div>
        </form>
    </div>
</body>
</html>