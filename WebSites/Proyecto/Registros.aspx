<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registros.aspx.cs" Inherits="Registros" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

 
    <table >
        <tr>
            <td colspan="3" style="height: 26px"><h1>Registro de usuario</h1></td>
        </tr>
        <tr>
            <td style="width: 19px; height: 13px;"></td>
            <td style="width: 35px; height: 13px;">
                <asp:Label ID="Label1" runat="server" Text="Rut"></asp:Label>
            </td>
            <td style="width: 360px; height: 13px;">
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 19px; height: 30px;"></td>
            <td style="width: 35px; height: 30px;">
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td style="width: 360px; height: 30px;">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 19px; height: 8px;"></td>
            <td style="width: 35px; height: 8px;">
                <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
            </td>
            <td style="width: 360px; height: 8px;">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 19px; height: 25px;"></td>
            <td style="width: 35px; height: 25px;">Direccion</td>
            <td style="width: 360px; height: 25px;">
                <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 30px; width: 19px;"></td>
            <td style="width: 35px">
                Edad</td>
            <td style="width: 360px; height: 30px;">
                <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 30px; width: 19px;"></td>
            <td style="height: 30px; width: 35px;">
                <asp:Label ID="Label4" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td style="width: 360px; height: 30px;">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 19px;"></td>
            <td style="height: 26px; width: 35px;">
                <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
            </td>
            <td style="width: 360px; height: 26px;">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="height: 26px; width: 19px;">&nbsp;</td>
            <td style="height: 26px; width: 35px;">
                <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td style="width: 360px; height: 26px;">
                <asp:TextBox ID="txtContraseña" TextMode="password" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="controlarclave" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Debe ingresar una contraseña" ForeColor="Red">
              
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 19px;">&nbsp;</td>
            <td style="height: 26px; width: 35px;">&nbsp;</td>
            <td style="width: 360px; height: 26px">
                <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click"/>
            </td>
        </tr>
    </table>
        
              

</asp:Content>

