<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="http://www.w3schools.com/lib/w3data.js"></script>
    <link rel="stylesheet" type="text/css" href="Styles/slicebox.css" />
	<link rel="stylesheet" type="text/css" href="Styles/demo.css" />
	<link rel="stylesheet" type="text/css" href="Styles/custom.css" />
	<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
    <title>Inicio</title>
</head>

<body>
        <div w3-include-html="Default.aspx"></div>
    <script>w3IncludeHTML();</script>

    
    <form id="form1" runat="server">
        </form>
	<div class="container">
			

			<div class="wrapper">

				<ul id="sb-slider" class="sb-slider">
					<li>
						<a href="#" target="_blank"><img src="http://www.tornometal.com/wp-content/uploads/2013/04/europeos.png" alt="image1"/></a>
						<div class="sb-description">
                            <h3>Camiones De Calidad</h3>
							<h4>Transfacil brinda camiones de calidad a partir de camiones del año 2010 en adelante, para su mejor aseguramiento de su carga a transportar.</h4>
						</div>
					</li>
					<li>
						<a href="#" target="_blank"><img src="http://www.transportesisabeldelmilagro.com/images/servicio/transporte-de-carga2.jpg" alt="image1"/></a>
						<div class="sb-description">
                            <h3>Transporte de arica a punta arenas</h3>
							<h4>FEn Transfacil usted podra obtener un servicio a los largo de Chile, de Arica a Punta Arena para que usted pueda obtener un servicio a la puerta de su casa.</h4>
						</div>
					</li>
					<li>
						<a href="#" target="_blank"><img src="http://sialapyme.com/wp-content/uploads/2015/11/FOTO-TIEMPO.jpg" height:"50px" width:"50px" alt="image1"/></a>
						<div class="sb-description">
                            <h3>Exacto en entrega</h3>
							<h4>Transfacil es puntual en el tiempo estimado a la entrega de su carga.</h4>
						</div>
					</li>


				</ul>

				<div id="shadow" class="shadow"></div>

				<div id="nav-arrows" class="nav-arrows">
					<a href="#">Next</a>
					<a href="#">Previous</a>
				</div>

			</div><!-- /wrapper -->

		</div>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.slicebox.js"></script>
		<script type="text/javascript">
			$(function() {
				
				var Page = (function() {

					var $navArrows = $( '#nav-arrows' ).hide(),
						$shadow = $( '#shadow' ).hide(),
						slicebox = $( '#sb-slider' ).slicebox( {
							onReady : function() {

								$navArrows.show();
								$shadow.show();

							},
							orientation : 'r',
							cuboidsRandom : true
						} ),
						
						init = function() {

							initEvents();
							
						},
						initEvents = function() {

							// add navigation events
							$navArrows.children( ':first' ).on( 'click', function() {

								slicebox.next();
								return false;

							} );

							$navArrows.children( ':last' ).on( 'click', function() {
								
								slicebox.previous();
								return false;

							} );

						};

						return { init : init };

				})();

				Page.init();

			});
		</script>
    <div w3-include-html="pie_pagina.aspx"></div>
    <script>w3IncludeHTML();</script>
    
</body>
</html>
