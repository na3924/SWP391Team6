package parentEntity;

public class Payment {
    private int paymentId;
    private int userId;
    private int tutoringClassId;
    private double amount;
    private String paymentDate;
    public String payment;

    // Getters and Setters
    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getTutoringClassId() {
        return tutoringClassId;
    }

    public void setTutoringClassId(int tutoringClassId) {
        this.tutoringClassId = tutoringClassId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public Payment() {
    }

    public Payment(int paymentId, int userId, int tutoringClassId, double amount, String paymentDate, String payment) {
        this.paymentId = paymentId;
        this.userId = userId;
        this.tutoringClassId = tutoringClassId;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.payment = payment;
    }
}