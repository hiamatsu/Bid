package bid

class Bid_news {

    static constraints = {
		subject(blank:false,size:1..300)
		content(blank:false)
		end_date(validator:{return (it>new Date())})
	}	
	static mapping = {
		id column: 'config_id'
		id generator: 'uuid'
		dateCreated column: 'create_date'
	}
	
	String	id							//PK
	String	subject					//標題

	String	content					//內容

	Date dateCreated				//發布時間

	Date end_date					//結束時間

	
}
