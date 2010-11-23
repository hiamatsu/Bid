
<%@ page import="bid.Auction_merchandise" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'auction_merchandise.label', default: 'Auction_merchandise')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'auction_merchandise.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="auction_price" title="${message(code: 'auction_merchandise.auction_price.label', default: 'Auctionprice')}" />
                        
                            <g:sortableColumn property="auction_bid_count" title="${message(code: 'auction_merchandise.auction_bid_count.label', default: 'Auctionbidcount')}" />
                        
                            <g:sortableColumn property="auction_bid_unit" title="${message(code: 'auction_merchandise.auction_bid_unit.label', default: 'Auctionbidunit')}" />
                        
                            <g:sortableColumn property="extend_bid_time" title="${message(code: 'auction_merchandise.extend_bid_time.label', default: 'Extendbidtime')}" />
                        
                            <g:sortableColumn property="min_auction_price" title="${message(code: 'auction_merchandise.min_auction_price.label', default: 'Minauctionprice')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${auction_merchandiseInstanceList}" status="i" var="auction_merchandiseInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${auction_merchandiseInstance.id}">${fieldValue(bean: auction_merchandiseInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: auction_merchandiseInstance, field: "auction_price")}</td>
                        
                            <td>${fieldValue(bean: auction_merchandiseInstance, field: "auction_bid_count")}</td>
                        
                            <td>${fieldValue(bean: auction_merchandiseInstance, field: "auction_bid_unit")}</td>
                        
                            <td>${fieldValue(bean: auction_merchandiseInstance, field: "extend_bid_time")}</td>
                        
                            <td>${fieldValue(bean: auction_merchandiseInstance, field: "min_auction_price")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${auction_merchandiseInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
