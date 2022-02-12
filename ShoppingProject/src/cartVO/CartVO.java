package cartVO;

public class CartVO {
	private String id;
	private String product;
	private int count;
	private int price;
	
	public CartVO() {
		
	}
	public CartVO(String id, String product, int count, int price) {
		
		this.id = id;
		this.product = product;
		this.count = count;
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
