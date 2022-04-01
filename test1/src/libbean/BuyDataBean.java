package libbean;


import java.sql.Timestamp;

public class BuyDataBean {
	private Long buy_id;//구매아이디
	private String buyer;//구매자
	private int campingitem_id;//구매된 캠핑물품의아이디
	private String campingitem_title;//구매된 물품명
	private int buy_price;//판매가
	private byte buy_count;//판매수량
	private String campingitem_image;//물품이미지
	private Timestamp buy_date;//구매일자
	private String account;//결제계좌
	private String deliveryName;//배송지
	private String deliveryTel ;//배송지 전화번호
	private String deliveryAddressNum;//배송지 번호
	private String deliveryAddress;//배송지 주소
	private String sanction;//배송상황
	
	public String getDeliveryAddressNum() {
		return deliveryAddressNum;
	}
	public void setDeliveryAddressNum(String deliveryAddressNum) {
		this.deliveryAddressNum = deliveryAddressNum;
	}
	public Long getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(Long buy_id) {
		this.buy_id = buy_id;
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
	public Timestamp getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(Timestamp buy_date) {
		this.buy_date = buy_date;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getDeliveryName() {
		return deliveryName;
	}
	public void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
	}
	public String getDeliveryTel() {
		return deliveryTel;
	}
	public void setDeliveryTel(String deliveryTel) {
		this.deliveryTel = deliveryTel;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getSanction() {
		return sanction;
	}
	public void setSanction(String sanction) {
		this.sanction = sanction;
	}
	
}