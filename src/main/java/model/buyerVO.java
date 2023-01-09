package model;

public class buyerVO {
  private String buyerSeq;
  private String buyerId;
  private String buyerPw;

  @Override
  public String toString() {
    return "buyerVO [buyerSeq=" + buyerSeq + ", buyerId=" + buyerId + ", buyerPw=" + buyerPw + "]";
  }

  public String getBuyerSeq() {
    return buyerSeq;
  }

  public void setBuyerSeq(String buyerSeq) {
    this.buyerSeq = buyerSeq;
  }

  public String getBuyerId() {
    return buyerId;
  }

  public void setBuyerId(String buyerId) {
    this.buyerId = buyerId;
  }

  public String getBuyerPw() {
    return buyerPw;
  }

  public void setBuyerPw(String buyerPw) {
    this.buyerPw = buyerPw;
  }

}
