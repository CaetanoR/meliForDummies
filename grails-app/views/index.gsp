<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
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
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
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
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div id="status" role="complementary" style="height: 475px;">
		Welcome to MeLi</div>
	<div id="page-body" class="content" role="main">

		<g:if test="${flash?.message}">
			<script>
				alert("${flash.message}");
			</script>
		</g:if>
		<div class="list-group">
			<g:if test="${flash?.publications}">
				<g:each in="${flash.publications}" var="publication">

					<g:form controller="purchase" action="purchase"
						params="[publication: publication.id]">
						<a href="#"
							class="list-group-item list-group-item-action flex-column align-items-start">
							<div class="d-flex w-100 justify-content-between">
								<h5 class="mb-1">
									Title:
									${publication.title}
								</h5>
								<small class="text-muted">Date: ${publication.dateCreated}</small>
							</div>
							<p class="mb-1">
								Description:
								${publication.description}
							</p> <small class="text-muted">only $ ${publication.price}</small> <span
							class="pull-right"> <span
								class="glyphicon glyphicon-shopping-cart"></span> <g:submitButton
									name="Comprar" , type="submit"
									class="glyphicon glyphicon-shopping-cart" />
						</span>
						</a>
					</g:form>
				</g:each>
			</g:if>
		</div>
	</div>
</body>
</html>

<!-- -->
