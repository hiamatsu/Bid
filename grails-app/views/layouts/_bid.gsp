<%@ page contentType="text/html; charset=UTF-8" %>
		       <div align="center"> 
		        <table width="100px">
                    <tbody>                                     
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="auction_merchandise.auction_price.label" default="Auctionprice" /></td>                           
                            <td valign="top" class="value">${fieldValue(bean: auction_merchandiseInstance, field: "auction_price")}</td>                            
                        </tr>
                        
                         <tr class="prop">
                            <td valign="top" class="name"><g:message code="auction_merchandise.min_auction_price.label" default="Minauctionprice" /></td>                           
                            <td valign="top" class="value">${fieldValue(bean: auction_merchandiseInstance, field: "min_auction_price")}</td>                           
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="auction_merchandise.auction_bid_unit.label" default="Auctionbidunit" /></td>                           
                            <td valign="top" class="value">${fieldValue(bean: auction_merchandiseInstance, field: "auction_bid_unit")}</td>                            
                        </tr>
                          
                       <tr class="prop">
                         	 <g:form controller="Auction_bid_log" action="Bid" method="post">
                         	 <g:hiddenField name="id" value="${auction_merchandiseInstance?.id}" />
                         		<g:each in="${auction_merchandiseInstance }" var="auction">																															
			                    	  <g:if test="${auction.auction_status =='Y'}">			                    		
		                    						<td valign="middle" class="name"><g:message code="auction_merchandise.extend_bid_time.label" default="Extendbidtime" /></td>				                            
						          					<td valign="middle" class="value">${fieldValue(bean: auction_merchandiseInstance, field: "extend_bid_time")}</td>
											
											  <tr class="prop">	
													<td valign="middle" class="name"></td>
													<td  class="value" rowspan="1" align="center""><g:submitButton name="Bid" value="Bid" >Bid</g:submitButton></td>								
											 </tr>   	
										</g:if>																							
									</g:each>	
								</g:form>	
                           </tr>                                     
							
                       <tr class="prop">
                            <td valign="top" class="name"><g:message code="auction_merchandise.auction_bid_count.label" default="Auctionbidcount" /></td>                           
                            <td valign="top" class="value">${fieldValue(bean: auction_merchandiseInstance, field: "auction_bid_count")}</td>                           
                       </tr>                   
                    </tbody>
                </table>   
     
            </div>

