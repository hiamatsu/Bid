package bid

class Auction_auto_bid_config {

    static constraints = {
    }
	
	static mapping = {
		id column: 'config_id'
		id generator: 'uuid'
		dateCreated column: 'create_date'
		lastUpdated column: 'last_modify_date'
	}
	
	String id		 	 	 														//PK
	BigDecimal auto_bid_max_cost								//最高投標價錢
	BigDecimal auto_bid_min_cost								//最低投標價錢
	String bidder_id														//投標者ID
	String bidder_name													//投標者名稱
	Date dateCreated														//建立日期
	Date lastUpdated														//最後修改日期
	String mid																	//商品ID
	char status																//狀態 "N:已停用, Y:可使用"


	
	
	
	
	
	
	
	
	
		
	
}
