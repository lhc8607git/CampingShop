package libbean;

public class ShopCampingitemDataBean {
	private String campingitem_id;
	private String campingitem_kind; 
	private String campingitem_makername; 
	private String campingitem_title; 
	private int campingitem_price; 
	private short campingitem_count;
	private String campingitem_launched;
	private String campingitem_material;
	private String campingitem_color;
	private String campingitem_size;
	private int campingitem_weight;
	private String campingitem_image; 
	private String campingitem_content;
	private byte campingitem_discount_rate; 

	public String getCampingitem_id() {
		return campingitem_id;
	}



	public void setCampingitem_id(String campingitem_id) {
		this.campingitem_id = campingitem_id;
	}




	public String getCampingitem_kind() {
		return campingitem_kind;
	}




	public void setCampingitem_kind(String campingitem_kind) {
		this.campingitem_kind = campingitem_kind;
	}




	public String getCampingitem_makername() {
		return campingitem_makername;
	}




	public void setCampingitem_makername(String campingitem_makername) {
		this.campingitem_makername = campingitem_makername;
	}




	public String getCampingitem_title() {
		return campingitem_title;
	}




	public void setCampingitem_title(String campingitem_title) {
		this.campingitem_title = campingitem_title;
	}




	public int getCampingitem_price() {
		return campingitem_price;
	}




	public void setCampingitem_price(int campingitem_price) {
		this.campingitem_price = campingitem_price;
	}




	public short getCampingitem_count() {
		return campingitem_count;
	}




	public void setCampingitem_count(short campingitem_count) {
		this.campingitem_count = campingitem_count;
	}




	public String getCampingitem_launched() {
		return campingitem_launched;
	}




	public void setCampingitem_launched(String campingitem_launched) {
		this.campingitem_launched = campingitem_launched;
	}




	public String getCampingitem_material() {
		return campingitem_material;
	}




	public void setCampingitem_material(String campingitem_material) {
		this.campingitem_material = campingitem_material;
	}




	public String getCampingitem_color() {
		return campingitem_color;
	}




	public void setCampingitem_color(String campingitem_color) {
		this.campingitem_color = campingitem_color;
	}




	public String getCampingitem_size() {
		return campingitem_size;
	}




	public void setCampingitem_size(String campingitem_size) {
		this.campingitem_size = campingitem_size;
	}




	public int getCampingitem_weight() {
		return campingitem_weight;
	}




	public void setCampingitem_weight(int campingitem_weight) {
		this.campingitem_weight = campingitem_weight;
	}




	public String getCampingitem_image() {
		return campingitem_image;
	}




	public void setCampingitem_image(String campingitem_image) {
		this.campingitem_image = campingitem_image;
	}




	public String getCampingitem_content() {
		return campingitem_content;
	}




	public void setCampingitem_content(String campingitem_content) {
		this.campingitem_content = campingitem_content;
	}



	public byte getCampingitem_discount_rate() {
		return campingitem_discount_rate;
	}




	public void setCampingitem_discount_rate(byte campingitem_discount_rate) {
		this.campingitem_discount_rate = campingitem_discount_rate;
	}



	public boolean validate() {
		if(
		campingitem_kind == null |
		campingitem_title == null |
		//campingitem_price; 
		//campingitem_count;
		//campingitem_length; 
		//campingitem_weight;
		campingitem_image == null |
		campingitem_content == null
		//discount_rate
		)
			return false;
		return true;
	}

}