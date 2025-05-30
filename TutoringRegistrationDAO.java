package parentModel;

import parentEntity.TutoringRegistration;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TutoringRegistrationDAO {
    private DBConnect dbConnect;

    public TutoringRegistrationDAO() {
        this.dbConnect = new DBConnect();
    }

    public List<TutoringRegistration> getPendingRegistrationsByParentEmail(String parentEmail) {
        List<TutoringRegistration> registrations = new ArrayList<>();
        try {
            Connection conn = dbConnect.getConnection();
            String sql = "SELECT tr.RegistrationID, tr.UserID, tr.TutoringClassID, tc.ClassName, tr.Status " +
                        "FROM TutoringRegistration tr " +
                        "JOIN TutoringClass tc ON tr.TutoringClassID = tc.TutoringClassID " +
                        "WHERE tr.UserID IN (SELECT UserID FROM [User] WHERE ParentEmail = ?) AND tr.Status = 'Pending'";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, parentEmail);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        TutoringRegistration reg = new TutoringRegistration();
                        reg.setRegistrationId(rs.getInt("RegistrationID"));
                        reg.setUserId(rs.getInt("UserID"));
                        reg.setTutoringClassId(rs.getInt("TutoringClassID"));
                        reg.setClassName(rs.getString("ClassName"));
                        reg.setStatus(rs.getString("Status"));
                        registrations.add(reg);
                    }
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(TutoringRegistrationDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return registrations;
    }

    public void closeConnection() {
        dbConnect.closeConnection();
    }
}