package parentEntity;

public class User {
    private int userId;
    private String fullName;
    private String email;
    private String relationshipWithStudent;

    // Getters and Setters
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRelationshipWithStudent() {
        return relationshipWithStudent;
    }

    public void setRelationshipWithStudent(String relationshipWithStudent) {
        this.relationshipWithStudent = relationshipWithStudent;
    }

    public User(int userId, String fullName, String email, String relationshipWithStudent) {
        this.userId = userId;
        this.fullName = fullName;
        this.email = email;
        this.relationshipWithStudent = relationshipWithStudent;
    }

    public User() {
    }
}