
<%@ page import="bid.Bid_news" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bid_news.label', default: 'Bid_news')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'bid_news.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="subject" title="${message(code: 'bid_news.subject.label', default: 'Subject')}" />
                        
                            <g:sortableColumn property="content" title="${message(code: 'bid_news.content.label', default: 'Content')}" />
                        
                            <g:sortableColumn property="end_date" title="${message(code: 'bid_news.end_date.label', default: 'Enddate')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'bid_news.dateCreated.label', default: 'Date Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${bid_newsInstanceList}" status="i" var="bid_newsInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${bid_newsInstance.id}">${i+1}</g:link></td>
                        
                            <td>${fieldValue(bean: bid_newsInstance, field: "subject")}</td>
                        
                            <td>${fieldValue(bean: bid_newsInstance, field: "content")}</td>
                        
                            <td><g:formatDate date="${bid_newsInstance.end_date}" /></td>
                        
                            <td><g:formatDate date="${bid_newsInstance.dateCreated}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${bid_newsInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
