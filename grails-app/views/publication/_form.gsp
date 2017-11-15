<%@ page import="com.app.grails.meli.Publication" %>



<div class="fieldcontain ${hasErrors(bean: publicationInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="publication.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="100" required="" value="${publicationInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicationInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="publication.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${publicationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publicationInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="publication.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: publicationInstance, field: 'price')}" required=""/>

</div>

