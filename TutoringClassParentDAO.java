package parentModel;

import parentEntity.TutoringClassParent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TutoringClassParentDAO {
    private DBConnect dbConnect;

    public TutoringClassParentDAO() {
        this.dbConnect = new DBConnect();
    }

    public List<TutoringClassParent> getEnrolledClassesByChildId(int childId) {
        List<TutoringClassParent> classes = new ArrayList<>();
        try {
            Connection conn = dbConnect.getConnection();
            String sql = "SELECT tc.TutoringClassID, tc.ClassName, s.SubjectName, t.FullName AS TeacherName " +
                        "FROM TutoringRegistration tr " +
                        "JOIN TutoringClass tc ON tr.TutoringClassID = tc.TutoringClassID " +
                        "JOIN Subject s ON tc.SubjectID = s.SubjectID " +
                        "JOIN Teacher t ON tc.TeacherID = t.TeacherID " +
                        "WHERE tr.UserID = ? AND tr.Status = 'Approved'";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setInt(1, childId);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        TutoringClassParent cls = new TutoringClassParent();
                        cls.setTutoringClassId(rs.getInt("TutoringClassID"));
                        cls.setClassName(rs.getString("ClassName"));
                        cls.setSubjectName(rs.getString("SubjectName"));
                        cls.setTeacherName(rs.getString("TeacherName"));
                        classes.add(cls);
                    }
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(TutoringClassParentDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return classes;
    }

    public void closeConnection() {
        dbConnect.closeConnection();
    }
}