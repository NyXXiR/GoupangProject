package model;

public class itemVO {

  private String seq;
  private String name;
  private String price;
  private String discount;
  private String seller_id;
  private String date;
  private String category;

  @Override
  public String toString() {
    return "itemVO [seq=" + seq + ", name=" + name + ", price=" + price + ", discount=" + discount
        + ", seller_id=" + seller_id + ", date=" + date + ", category=" + category + "]";
  }

  public String getSeq() {
    return seq;
  }

  public void setSeq(String seq) {
    this.seq = seq;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPrice() {
    return price;
  }

  public void setPrice(String price) {
    this.price = price;
  }

  public String getDiscount() {
    return discount;
  }

  public void setDiscount(String discount) {
    this.discount = discount;
  }

  public String getSeller_id() {
    return seller_id;
  }

  public void setSeller_id(String seller_id) {
    this.seller_id = seller_id;
  }

  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }
}
