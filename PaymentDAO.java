package parentModel;

import parentEntity.Payment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PaymentDAO {
    private DBConnect dbConnect;

    public PaymentDAO() {
        this.dbConnect = new DBConnect();
    }

    public List<Payment> getPendingPaymentsByUserId(int userId) {
        List<Payment> payments = new ArrayList<>();
        try {
            Connection conn = dbConnect.getConnection();
            String sql = "SELECT PaymentID, UserID, TutoringClassID, Amount, PaymentDate " +
                        "FROM Payment " +
                        "WHERE UserID = ? AND PaymentDate IS NULL";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setInt(1, userId);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        Payment payment = new Payment();
                        payment.setPaymentId(rs.getInt("PaymentID"));
                        payment.setUserId(rs.getInt("UserID"));
                        payment.setTutoringClassId(rs.getInt("TutoringClassID"));
                        payment.setAmount(rs.getDouble("Amount"));
                        payment.setPaymentDate(rs.getString("PaymentDate"));
                        payments.add(payment);
                    }
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return payments;
    }

    public void closeConnection() {
        dbConnect.closeConnection();
    }
}