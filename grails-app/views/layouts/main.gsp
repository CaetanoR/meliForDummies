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
				float: right;
				margin-top: -65px;
			}
			
			.button {
				background-color: black;
				color:white;
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
			<a><asset:image class="logo" src="meli_logo.png" alt="Grails"/></a>
			<fieldset class="form search">
    			<g:form  method="GET">
	            	<input type="text" name="search" placeholder="Search.." style= "width:350px"> 
			    </g:form>
			</fieldset>
				<span class="right">
					<g:if test="${session?.user}">
						<b>Hello, ${session.user.username}!</b>
						<g:link controller="user" action="logout">
							<input class="save button" type="button" value="Logout" class="button"/> 
						</g:link>				
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
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
