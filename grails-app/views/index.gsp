<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}			
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div  id="status" role="complementary">
		Welcome to MeLi
		</div>
		<div id="page-body" role="main">
			<h1></h1>
			
			<g:if test="${flash?.publications}">      	
	       	<table style="display:block; margin-top: 50px; margin-left: 75px; padding-left: 65px; width: 400px; border: 0px " class="customers">
			  <tr>
			    <th>Product</th>
			    <th>Description</th>
			    <th>Price</th>
			  </tr>
			 <g:each in="${flash.publications}" var="publication">
			  <tr>
			  	<td>${publication.title}</td>
				<td>${publication.description}</td>
				<td>${publication.price}</td>
			  </tr>
			 </g:each>
			</table>
			</g:if>
		</div>
		
	</body>
</html>

<!-- -->
