package model;

public class cartItemVO {
  private String cartSeq;
  private String buyerId;

  @Override
  public String toString() {
    return "cartItemVO [cartSeq=" + cartSeq + ", buyerId=" + buyerId + "]";
  }

  public String getCartSeq() {
    return cartSeq;
  }

  public void setCartSeq(String cartSeq) {
    this.cartSeq = cartSeq;
  }

  public String getBuyerId() {
    return buyerId;
  }

  public void setBuyerId(String buyerId) {
    this.buyerId = buyerId;
  }
}
