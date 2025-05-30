package parentModel;

import parentEntity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO {
    private DBConnect dbConnect;

    public UserDAO() {
        this.dbConnect = new DBConnect();
    }

    public User getParentById(int parentId) {
        User parent = null;
        try {
            Connection conn = dbConnect.getConnection();
            String sql = "SELECT FullName, Email FROM [User] WHERE UserID = ? AND RelationshipWithStudent IS NOT NULL";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setInt(1, parentId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        parent = new User();
                        parent.setUserId(parentId);
                        parent.setFullName(rs.getString("FullName"));
                        parent.setEmail(rs.getString("Email"));
                    }
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return parent;
    }

    public List<User> getChildrenByParentEmail(String parentEmail) {
        List<User> children = new ArrayList<>();
        try {
            Connection conn = dbConnect.getConnection();
            String sql = "SELECT UserID, FullName FROM [User] WHERE ParentEmail = ?";
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, parentEmail);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        User child = new User();
                        child.setUserId(rs.getInt("UserID"));
                        child.setFullName(rs.getString("FullName"));
                        children.add(child);
                    }
                }
            }
        } catch (SQLException e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return children;
    }

    public void closeConnection() {
        dbConnect.closeConnection();
    }
}