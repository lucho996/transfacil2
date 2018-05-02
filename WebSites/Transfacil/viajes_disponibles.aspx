<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viajes_disponibles.aspx.cs" Inherits="viajes_disponibles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="Content/bootstrap.min.css" rel="Stylesheet" />
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.js"></script>
    <script src="http://www.w3schools.com/lib/w3data.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70px;
            height: 50px;
            background-color: #339966;
            border-radius: 10px  10px  10px 10px;
        }

        .clase_tabla {
            margin-top: 5%;
        }
    </style>
</head>
<body style="height: 765px; width: 1335px;">
     <center>
    <form id="form1" runat="server">
    <div>
   
        <asp:GridView ID="GridView1" runat="server" Width="557px" CellPadding="4" Height="114px"  CssClass="clase_tabla" HorizontalAlign="Center" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Detalle" ShowSelectButton="True" >
                <ControlStyle Font-Bold="False" />
                <HeaderStyle Font-Bold="False" Wrap="True" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#339966" />
            <HeaderStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#82c7ab" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#82c7ab" />
            <SelectedRowStyle Font-Bold="True" BorderStyle="None" Wrap="True" />
            <SortedAscendingCellStyle BackColor="#339966" />
            <SortedAscendingHeaderStyle BackColor="#339966" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
    
    </div>
        <asp:Label ID="lbl1" runat="server" Text="Label" Visible="false"></asp:Label>
    </form>
    </center>
</body>
</html>
