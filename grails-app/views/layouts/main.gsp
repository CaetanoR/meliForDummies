<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="MercadoLibre"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		
		 <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
		
		<style type="text/css" media="screen">
			.logo {
			    height: 100px;
			    width: 200px;
			    margin-top: -30px;
    			margin-bottom: -30px;
    			
			}
			.right{
				margin-top: -60px;
				float:right
			}
			
			.button {
				background-color: yellow;
				color:black;
				border:none;
				text-decoration:none!important;
			}
					
			.clear{
				border: 1px solid #000000;
				overflow: auto;
				width: 100%
				clear: both;
			}
			
			.search{
				margin-left: 300px;
				margin-top: -60px;
				width:126px;
			}
			
		</style>
	</head>
	<body>
		<div id="grailsLogo" role="banner" style= "background-color:yellow">
			<a href="http://localhost:8080/meliForDummies/"><asset:image class="logo" src="meli_logo.png" alt="Grails"/></a>
			<fieldset class="form search">
    			<g:form action="listByLike" controller="publication" method="GET">
	            	<input type="text" name="title" placeholder="Search.." style= "width:350px"> 
			    </g:form>
			</fieldset>
				<span class="right">
					<g:if test="${session?.user}">
						<span style="display:block">
						<a  style="font-weight: bold; margin-top: 20px; margin-right:150px; text-decoration:none; color:black" > <b>Hi, ${session.user.username}!</b> </a>
						</span>
						<span style="display:block; margin-top: -51px; margin-left: 110px;">
						<g:link controller="user" action="logout">
								<input type="button" value="Logout" class="button"/>
						</g:link>
						</span>	
						<span style="display:block ; margin-top:-54px; margin-left: 170px;">
						<g:link controller="publication" action="publish">
							<input class="publish button" type="button" value="Publish" class="button">
						</g:link>
						</span>
								
					</g:if>
					<g:else>
						<b>please, login!</b>
						<g:link controller="user" action="login">
							<input type="button" value="Login" class="button"/> 
						</g:link>				
					</g:else>
				</span>

		</div>
		<g:layoutBody/>
		<div class="footer" style="background-color: yellow"role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
