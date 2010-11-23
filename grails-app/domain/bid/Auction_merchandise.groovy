package bid;

class Auction_merchandise {

    static constraints = {
		auction_price(nullable:false)
		auction_bid_count()
		auction_bid_unit()
		extend_bid_time()
		min_auction_price()
		auction_status()
		min_auction_price()
    }
	static mapping = {
		id column: 'auction_id'
		id generator: 'uuid'		
	}
	 
	String id																						//PK
	BigDecimal auction_price														//拍賣售價
	int auction_bid_count								   								//投標次數
	BigDecimal auction_bid_unit													//投標單位
	int extend_bid_time 																//延長拍賣時間
	char auction_status																	//拍賣狀態 "N:已停止, S:已賣出, W:暫停中, Y:拍賣中"		
	BigDecimal min_auction_price												//最低售價

}
