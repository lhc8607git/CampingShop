package libbean;

public class CartDataBean {
	private int cart_id; //장바구니의 아이디
	private String buyer; //구매자        member테이블->member_name 가져올꺼임
	private int campingitem_id; //구매된 물품의 아이디       campingitem테이블->campingitem_id
	private String campingitem_title;//구매된 물품명            campingitem테이블->campingitem_title
	private int  buy_price;//장바구니 안의 물품 판매가 
	private byte buy_count; //장바구니 안의 물품 판매수량
	private String campingitem_image;//물품이미지              campingitem테이블->campingitem_image

	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getBuyer() {
		return buyer;
	}
	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}
	public int getCampingitem_id() {
		return campingitem_id;
	}
	public void setCampingitem_id(int campingitem_id) {
		this.campingitem_id = campingitem_id;
	}
	public String getCampingitem_title() {
		return campingitem_title;
	}
	public void setCampingitem_title(String campingitem_title) {
		this.campingitem_title = campingitem_title;
	}
	public int getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}
	public byte getBuy_count() {
		return buy_count;
	}
	public void setBuy_count(byte buy_count) {
		this.buy_count = buy_count;
	}
	public String getCampingitem_image() {
		return campingitem_image;
	}
	public void setCampingitem_image(String campingitem_image) {
		this.campingitem_image = campingitem_image;
	}
}
