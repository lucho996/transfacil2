<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Solicitud_viaje.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
   <link href="Content/bootstrap.min.css" rel="Stylesheet" />
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.js"></script>
    <script src="http://www.w3schools.com/lib/w3data.js"></script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta charset="utf-8">
   	<style>
      html, body, #map_canvas {                
        height: 50%;
      }
      body{
           background-image:url("Imagenes/Fondo.jpg");
      }
        .auto-style1 {
            margin-top: 8%;
            width: 950px;
            height: 500px;
            margin-left:14%;
            border: 0px solid #cccccc;
            background-color: #82c7ab;
            border-radius: 22px 22px 22px 22px;
            -moz-border-radius: 22px 22px 22px 22px;
            -webkit-border-radius: 22px 22px 22px 22px;
            -webkit-box-shadow: 3px 6px 24px -1px rgba(0,0,0,0.75);
            -moz-box-shadow: 3px 6px 24px -1px rgba(0,0,0,0.75);
            box-shadow: 3px 6px 24px -1px rgba(0,0,0,0.75);
            opacity:1;

        }
        .auto-style7 {
            height: 765px;
            width: 1360px;
            margin-top: 50px;
        }
        .auto-style10 {
            width: 817px;
        }
        .auto-style14 {
            width: 70%;
            float: left;
            height: 10px;
            margin-left: 53px;
        }
        .auto-style17 {
            height: 52px;
            text-align: center;
        }
        .auto-style24 {
            width: 220px;
            height: 40px;
            text-align: center;
            color:#1b4906;
            border: 0px solid #cccccc;
        }
        .auto-style25 {
            width: 430px;
            height: 39px;
        }
        .auto-style27 {
            width: 430px;
            height: 40px;
        }
        .auto-style29 {
            width: 430px;
            height: 60px;
        }
        .auto-style31 {
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
<title>Solicitud Viaje</title>

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

</head>

<body  style="width: 1360px; height: 765px; margin-right: 0px;">
    <div w3-include-html="Default.aspx"></div>
    <script>w3IncludeHTML();</script>
   
    <form id="ruta" runat="server" class="auto-style7">
        
        <table class="auto-style1">

            <tr>
                <td class="auto-style24"><asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtrut_user" runat="server" Height="25px" Width="180px" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style10" rowspan="16">
       <div id="map_canvas" class="auto-style14"></div>
        



            </tr>

            <tr>
                <td class="auto-style24"><asp:Label ID="Label2" runat="server" Text="Origen"></asp:Label>
                </td>
                <td class="auto-style25">
        <asp:TextBox ID="origen" name="origen" runat="server" placeholder="Calle,Ciudad/Comuna" Height="25px" Width="180px" CssClass="form-control" OnTextChanged="origen_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label3" runat="server" Text="Destino"></asp:Label>
                </td>
                <td class="auto-style27">
        <asp:TextBox ID="destino" name="destino" runat="server" placeholder="Calle,Ciudad/Comuna" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox> 
        
                </td>
            
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">
         <asp:Button ID="calcularRuta" runat="server" Text="Calcular ruta" Height="35px" Width="114px" OnClick="calcularRuta_Click" CssClass="btn btn-success" />
        
                </td>
            
            </tr>
            <tr>
                <td class="auto-style24"> 
                    <asp:Label ID="Label4" runat="server" Text="Tipo de carga"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="cbx_tipocarga" runat="server" Height="35px" Width="120px" CssClass="form-control">
                        <asp:ListItem>Seleccione...</asp:ListItem>
                        <asp:ListItem>Fragil</asp:ListItem>
                        <asp:ListItem>Inflamable</asp:ListItem>
                        <asp:ListItem>Normal</asp:ListItem>
                        <asp:ListItem>Pesada</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label5" runat="server" Text="Alto"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="alto" runat="server" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label6" runat="server" Text="Ancho"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="ancho" runat="server" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label7" runat="server" Text="Largo"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="largo" runat="server" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label8" runat="server" Text="Peso"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="peso" runat="server" Width="50px" Height="25px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label9" runat="server" Text="Descripción"></asp:Label>
                </td>
                <td class="auto-style29">

               
                    <textarea id="txtdescripcion" cols="20" rows="2" runat="server" class="form-control"></textarea>

               
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label10" runat="server" Text="Estado"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:DropDownList ID="cbx_estado" runat="server" Height="37px" Width="163px" CssClass="auto-style31">
                        <asp:ListItem>Seleccione...</asp:ListItem>
                        <asp:ListItem>Buen Estado</asp:ListItem>
                        <asp:ListItem>Defectuoso</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label11" runat="server" Text="RUN Receptor"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtrun_receptor" runat="server" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label12" runat="server" Text="Nombre Receptor"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtnom_receptor" runat="server" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label13" runat="server" Text="Apellido Receptor"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtapell_receptor" runat="server" Height="25px" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><asp:Label ID="Label14" runat="server" Text="Telefono Receptor"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txt_tele_receptor" runat="server" Height="25px" Width="180px"  CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="2">
        <label>
                    <asp:Button ID="btnsolicitar" runat="server" Height="42px" Text="Solicitar" Width="126px" CssClass="btn btn-success" BackColor="#339966" BorderColor="#999999" BorderStyle="Solid" ForeColor="Black" OnClick="btnsolicitar_Click" />

        </label>


                </td>
            </tr>
        </table>

    </form>
   
<div id="directionsPanel" style="width: 25%;float:left; visibility:hidden; display:none"></div>

<script>
var boton = document.getElementById("calcularRuta");
boton.addEventListener("click", function(ev){
	
	var origen = document.getElementById("origen").value;
	var destino = document.getElementById("destino").value;
	
	cargarRuta(origen,destino);
	
	ev.preventDefault();	
	
},false);
</script>



</body>
</html>

