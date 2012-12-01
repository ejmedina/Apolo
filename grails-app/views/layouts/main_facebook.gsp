<!DOCTYPE html>
<html>
    <head>
	    <title><g:layoutTitle default="Freddo - Compra tu Helado Online" /></title>
	    <title><g:message code="main.title"/></title>
		<meta name="title" content="Freddo | Comprar Helado Online"/> 
		<meta name="description" content="Freddo | Comprar Helado Online"/> 
		<meta name="keywords" content="Freddo | Comprar Helado Online" />
		<meta name="author" content="Freddo.com.ar">
		<meta name="google-site-verification" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Styles -->
		<link rel="stylesheet" href="${resource(dir:'css',file:'style.css')}">
		<link rel="stylesheet" href="${resource(dir:'css',file:'master.css')}">
		<link rel="stylesheet" href="${resource(dir:'css',file:'jquery-ui.css')}">
		<link rel="stylesheet" href="${resource(dir:'css/tablesorter',file:'tablesorter.css')}">
		<link rel="stylesheet" href="${resource(dir:'css',file:'autocomplete.css')}">
		<link rel="stylesheet" href="${resource(dir:'css/textlistbox',file:'TextboxList.Autocomplete.css')}">		
		<link rel="stylesheet" href="${resource(dir:'css/textlistbox',file:'TextboxList.css')}">
		<!-- Scripts-->
		<!--[if IE]>
		  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		  <![endif]-->
		<g:javascript library="jquery" plugin="jquery"/>
		<script src="${resource(dir:'js/libs',file:'jquery-ui-1.8.14.custom.min.js')}"></script>
		<script src="${resource(dir:'js/libs',file:'jquery.tablesorter.min.js') }"></script>
		<script src="${resource(dir:'js/libs',file:'jquery.tools.min.js')}"></script>
		<script src="${resource(dir:'js/libs',file:'modernizr-1.7.min.js')}"></script>
		<script src="${resource(dir:'js/libs',file:'iepp.js')}"></script>
		<script src="${resource(dir:'js/libs',file:'trade.js')}"></script>
		<script src="${resource(dir:'js/libs',file:'slider.js')}"></script>
		<script src="${resource(dir:'js/libs',file:'tooltip.js')}"></script>
		<script src="${resource(dir:'js/textlistbox',file:'TextboxList.js')}"></script>
		<script src="${resource(dir:'js/textlistbox',file:'TextboxList.Autocomplete.js')}"></script>
		<script src="${resource(dir:'js/textlistbox',file:'TextboxList.Autocomplete.Binary.js')}"></script>
		<script src="${resource(dir:'js/textlistbox',file:'GrowingInput.js')}"></script>
		<!-- My Scripts-->
		<script src="${resource(dir:'js/mylibs/coda-slider-2.0',file:'jquery.easing.1.3.js')}"></script>
		<script src="${resource(dir:'js/mylibs',file:'swfobject.js')}"></script>		
		<script src="${resource(dir:'js/mylibs',file:'twitter-1.13.1.min.js')}"></script>	
		<script src="${resource(dir:'js/mylibs',file:'jquery.vticker.1.4.js')}"></script>	
		<script src="${resource(dir:'js/mylibs',file:'jquery.newsTicker.js')}"></script>
		<script src="${resource(dir:'js/',file:'myscripts.js')}"></script>	
		<script src="${resource(dir:'js/mylibs',file:'autocomplete.js')}"></script>	
		<script src="http://www.google.com/jsapi"></script>

		<!-- External Scripts-->
		<script src="http://platform.twitter.com/widgets.js"></script>
		<script src="https://apis.google.com/js/plusone.js">{lang: 'es-419'}</script>
		<script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
		<!-- Open Graph Protocol Tags http://ogp.me/ -->
		<meta property="og:url" content="http://www.freddo.com/" />
		<meta property="og:title" content="Freddo Compra de Helado Online" />
		<meta property="og:type" content="Commerce" />
		<meta property="og:image" content="http://profile.ak.fbcdn.net/hprofile-ak-snc4/hs338.snc4/41815_118194909773_909_n.jpg" />
		<meta property="fb:app_id" content="261904593833945" />
		<meta property="og:site_name" content="Freddo | Compra de Helado Online" />
		<meta property="og:description" content="" />
	 	
	 	<g:javascript>
			if (self ==  parent){
		 		<g:remoteFunction controller="facebook" action="removeFacebookSession"/>	
		 		window.location.reload( false );
		 	}
		</g:javascript>
	 	
	 	<g:layoutHead />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
		<!-- Container -->        
		<div id="container">
			 <div id="fb-root"></div>
			<header>	
					<g:render template="/template/headerFB"/>
				</header>
			<!-- Main -->	
			<div id="main" role="main">
			    <hr class="space"/>
			   	<!-- Content -->
				<section id="body_section" class="span-12">
					<g:layoutBody/>
				</section>
				
			    <section id="sidebar_section" class="span-7">
					<span id="sidebarContainer">Promociones</span>
				</section>

			
			<!-- Main Ends -->    
			</div>
			<!-- Footer -->
<%--			<g:render template="/templates/common/footer"/>	--%>
		</div>
		<!-- Container Ends --> 
		<script src="${resource(dir:'js',file:'plugins.js')}"></script> 
		<script src="${resource(dir:'js',file:'script.js')}"></script>
		<script src="${resource(dir:'js',file:'rwasn.js')}"></script>
	
		<!-- Start JS Initialization-->
		
		<div style="position: absolute; left: 50%;margin-left: -252px;width: 504px;top:0px">		
			<div id="tradeBoxContainer"></div>
		</div>
			
		<div id="tooltip" class="tooltip shadow" style="display:none;background-color: white; padding:10px;">
			<div class="tooltip_content company-logo">
				<img class="logoCompany" style="float:left; margin: 0 auto; padding:10px; margin-right:10px; margin-top:10%;" src="${resource(dir:'/img/symbols/logo/',file:'GOOG.gif')}" />
				<img class="graphicCompany" style="float:left;" src="http://www.google.com/finance/chart?cht=c&q=GOOG&tlf=12h" width="250" height="130" alt="" />
			</div>
			<div class="arrow"></div>
		</div>
		
		<script type="text/javascript">
		
			function loading(div){
				$('#'+div).empty().html('<img style="margin-top:5px; padding-left:45%" align="center" src="/Freddo/img/spinner.gif"/>');
			}

			function socialLogin(){
				var a = document.getElementsByName('loginForm');
				a[0].submit();
			}
			
		</script>
				
		<!-- End JS Initialization--> 
		
    </body>
</html>