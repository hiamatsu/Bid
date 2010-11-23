

<%@ page import="bid.Auction_merchandise" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'auction_merchandise.label', default: 'Auction_merchandise')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${auction_merchandiseInstance}">
            <div class="errors">
                <g:renderErrors bean="${auction_merchandiseInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="auction_price"><g:message code="auction_merchandise.auction_price.label" default="Auctionprice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: auction_merchandiseInstance, field: 'auction_price', 'errors')}">
                                    <g:textField name="auction_price" value="${fieldValue(bean: auction_merchandiseInstance, field: 'auction_price')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="auction_bid_count"><g:message code="auction_merchandise.auction_bid_count.label" default="Auctionbidcount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: auction_merchandiseInstance, field: 'auction_bid_count', 'errors')}">
                                    <g:textField name="auction_bid_count" value="${fieldValue(bean: auction_merchandiseInstance, field: 'auction_bid_count')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="auction_bid_unit"><g:message code="auction_merchandise.auction_bid_unit.label" default="Auctionbidunit" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: auction_merchandiseInstance, field: 'auction_bid_unit', 'errors')}">
                                    <g:textField name="auction_bid_unit" value="${fieldValue(bean: auction_merchandiseInstance, field: 'auction_bid_unit')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="extend_bid_time"><g:message code="auction_merchandise.extend_bid_time.label" default="Extendbidtime" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: auction_merchandiseInstance, field: 'extend_bid_time', 'errors')}">
                                    <g:textField name="extend_bid_time" value="${fieldValue(bean: auction_merchandiseInstance, field: 'extend_bid_time')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="min_auction_price"><g:message code="auction_merchandise.min_auction_price.label" default="Minauctionprice" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: auction_merchandiseInstance, field: 'min_auction_price', 'errors')}">
                                    <g:textField name="min_auction_price" value="${fieldValue(bean: auction_merchandiseInstance, field: 'min_auction_price')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="auction_status"><g:message code="auction_merchandise.auction_status.label" default="Auctionstatus" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: auction_merchandiseInstance, field: 'auction_status', 'errors')}">
                                    <g:textField name="auction_status" value="${fieldValue(bean: auction_merchandiseInstance, field: 'auction_status')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
