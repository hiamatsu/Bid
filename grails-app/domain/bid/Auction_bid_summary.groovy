package bid

import java.util.Date;

class Auction_bid_summary {

    static constraints = {
    }
	
	static mapping = {
		id column: 'sid'
		id generator: 'uuid'
		dateCreated column: 'create_date'
		lastUpdated column: 'last_modify_date'
	}
			 
	String id														//PK
	int bid_count											//投標次數
	String bidder_id										//投標者ID
	String bidder_name									//投標者名稱
	BigDecimal last_bid_cost						//最後投標價錢
	String mid													//商品ID
	Date dateCreated										//建立日期
	Date lastUpdated										//最後修改日期
		     
}
