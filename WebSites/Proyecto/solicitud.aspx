<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="solicitud.aspx.cs" Inherits="solicitud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
    <title></title>
	<meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- JQUERY SCRIPTS -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCWJtORFuyD1EjuTYZjl5vfS1RyzpwBgrU&sensor=false&language=es"></script>
    <script src="../js/maps.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            initMap('Madrid', 'Barcelona', 'map_canvas')
        });

        /* recoger el valor de un elemento */
        function getElementValue(elemId) {
            try {
                return document.getElementById(elemId).value;
            } catch (e) {
                return;
            }
        }
    </script>
</head>
<body>
    <div>
        <label for="origen">Origen</label>
        <input type="text" name="origen" id="origen" placeholder="calle, ciudad, estado..." />
        <br />
        <label for="destino">Destino</label>
        <input type="text" name="destino" id="destino" placeholder="calle, ciudad, estado..." />
        <br />
        <input type="button" id="buscar" value="Buscar ruta" onclick="initMap(getElementValue('origen'), getElementValue('destino'), 'map_canvas')" />
    </div>
    <br />
    <div>
        <div id="map_canvas" style="float:left; width:70%; height:500px"></div>
    </div>
</body>

</asp:Content>

