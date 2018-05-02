<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registro_usuario.aspx.cs" Inherits="Registro_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="Stylesheet" />
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 350px;
            border: 0px solid #cccccc;
            background-color: #82c7ab;
            border-radius: 22px 22px 22px 22px;
            -moz-border-radius: 22px 22px 22px 22px;
            -webkit-border-radius: 22px 22px 22px 22px;
            -webkit-box-shadow: 3px 6px 24px -1px rgba(0,0,0,0.75);
            -moz-box-shadow: 3px 6px 24px -1px rgba(0,0,0,0.75);
            box-shadow: 3px 6px 24px -1px rgba(0,0,0,0.75);
            margin-top:5%;
        }
        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style4 {
            height: 39px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            font-size: large;
        }
        .auto-style6 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</head>
<body>

    <center>
    <form id="form1" runat="server" class="auto-style3">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"><strong>
                    <br />
                    Registro de Usuario<br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="text-center">
                  <asp:TextBox ID="txtrun" runat="server" placeholder="Rut" CssClass="form-control"></asp:TextBox>
               
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtnombre" runat="server" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtapellido" runat="server" placeholder="Apellido" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtdireccion" runat="server" placeholder="Dirección" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtcorreo" runat="server" placeholder="Correo" CssClass="form-control" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtnumtel" runat="server" placeholder="Número de télefono" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtcontra" runat="server" TextMode="Password" placeholder="Ingrese Contraseña" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtrepetcontra" runat="server" TextMode="Password" placeholder="Vuelva a ingresar contraseña" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                 <center>   <asp:Button ID="Button1" runat="server" Text="Registrar" CssClass="btn btn-succes" Width="122px" OnClick="Button1_Click"/>    </center>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
        </center>
</body>
</html>
