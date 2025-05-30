package parentEntity;

public class TutoringClassParent {
    private int tutoringClassId;
    private String className;
    private String subjectName;
    private String teacherName;
    private int childId; 
    private String childName; 

    public TutoringClassParent() {
    }

    public TutoringClassParent(int tutoringClassId, String className, String subjectName, String teacherName, int childId, String childName) {
        this.tutoringClassId = tutoringClassId;
        this.className = className;
        this.subjectName = subjectName;
        this.teacherName = teacherName;
        this.childId = childId;
        this.childName = childName;
    }

    // Getters and Setters
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

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public int getChildId() {
        return childId;
    }

    public void setChildId(int childId) {
        this.childId = childId;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }
}