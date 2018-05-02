<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detalle_parachofer.aspx.cs" Inherits="Detalle_parachofer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="http://www.w3schools.com/lib/w3data.js"></script>
    <title></title>
    <style type="text/css">
        	
      html, body, #map_canvas {                
        height: 70%;
      }
        .auto-style1 {
            width: 771px;
            height: 350px;
            border: 1px solid #cccccc;
            background-color: #b2c629;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style8 {
            height: 23px;
            width: 37px;
        }
        .auto-style9 {
            width: 37px;
        }
        .auto-style11 {
            width: 83px;
        }
        .auto-style12 {
            height: 23px;
            width: 83px;
        }
        .auto-style14 {
            height: 489px;
            width: 857px;
            margin-bottom: 19px;
        }
    </style>
</head>
    
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWJtORFuyD1EjuTYZjl5vfS1RyzpwBgrU&callback=initMap"></script>

<script>
var map;
function initialize(){  
	
	var mapOptions = {
	          zoom: 7,
	          center: new google.maps.LatLng(-36.817209, -73.050901),
	          mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
				
	map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
   
}
function cargarRuta(origen,destino){
	var request = {
		origin:origen,
		destination:destino,
		travelMode: google.maps.TravelMode.DRIVING
	};
	
	var directionsService = new google.maps.DirectionsService();
	var directionsDisplay = new google.maps.DirectionsRenderer();
	
	// Indicamos dónde esta el mapa para renderizarnos
	directionsDisplay.setMap(map);

    //PANEL EN DONDE MUESTRA LA RUTA

	var panel = document.getElementById("directionsPanel");
	panel.innerHTML = ""; // Vacío el panel, por si buscamos varias veces
	directionsDisplay.setPanel(panel);
	
	directionsService.route(request, function(result, status) {
	    if (status == google.maps.DirectionsStatus.OK) {
	      directionsDisplay.setDirections(result);
	    }
	  });
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<body style="width: 884px">
       <div w3-include-html="Default.aspx"></div>
    <script>w3IncludeHTML();</script>
    <form id="form1" runat="server" class="auto-style14">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">Detalle de solicitud</td>
            </tr>
            <tr>
                <td class="auto-style9">Origen:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="origen" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                </td>
                <td  rowspan="14">
                    <%-- <div id="map_canvas" class="auto-style13"></div>--%>
                   
     <div id="map_canvas" style="width: 25%;float:left"></div>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Destino:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="destino" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Tipo carga</td>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Alto:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Ancho:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Largo</td>
                <td class="auto-style11">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Peso:</td>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Descripción:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Estado:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Rut receptor:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Nombre receptor:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Apellido receptor:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Télefono receptor:</td>
                <td class="auto-style11">
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click1" Text="Button" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <div id="directionsPanel" style="width: 25%;float:left; visibility:hidden; display:none"></div>

<script>

    var boton = document.getElementById("Button1");

        boton.addEventListener("click", function(ev){
  
            var origen = document.getElementById("origen").value;
            var destino = document.getElementById("destino").value;
	
            cargarRuta(origen,destino);
	
            ev.preventDefault();	
        
        },false);

</script>
</body>
</html>
