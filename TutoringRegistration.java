package parentEntity;

public class TutoringRegistration {
    private int registrationId;
    private int userId;
    private int tutoringClassId;
    private String className;
    private String status;

    // Getters and Setters
    public int getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(int registrationId) {
        this.registrationId = registrationId;
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

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public TutoringRegistration(int registrationId, int userId, int tutoringClassId, String className, String status) {
        this.registrationId = registrationId;
        this.userId = userId;
        this.tutoringClassId = tutoringClassId;
        this.className = className;
        this.status = status;
    }

    public TutoringRegistration() {
    }
}