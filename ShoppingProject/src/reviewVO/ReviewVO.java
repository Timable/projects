package reviewVO;

public class ReviewVO {
private String id;
private String product;
private String text;
private String star;
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
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public String getStar() {
	return star;
}
public void setStar(String star) {
	this.star = star;
}

public ReviewVO() {}

public ReviewVO(String id, String product, String text, String star) {
	super();
	this.id = id;
	this.product = product;
	this.text = text;
	this.star = star;
}



}