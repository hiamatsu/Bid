package bid

class Auction_bid_log {

    static constraints = {
    }
	
	static mapping = {
		id column: 'log_id'
		id generator: 'uuid'
		dateCreated column: 'create_date'
		
	}
		 
	String id 												//PK
	String bidder_id									//投標者ID
 	String bidder_name                            //投標者名稱
	BigDecimal bid_price							//投標售價
	Date dateCreated									//建立日期
	String mid												//商品ID
	char type												//類型 "BUT:自動 ,SIN:手動"
		     

	
	
	
}
