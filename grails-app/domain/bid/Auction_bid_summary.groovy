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
	int bid_count											//��Ц���
	String bidder_id										//��Ъ�ID
	String bidder_name									//��Ъ̦W��
	BigDecimal last_bid_cost						//�̫��л���
	String mid													//�ӫ~ID
	Date dateCreated										//�إߤ��
	Date lastUpdated										//�̫�ק���
		     
}
