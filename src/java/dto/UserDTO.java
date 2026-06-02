
package dto;

public class UserDTO {
    
    // Information of Users (All user)
    private int userId;
    private String fullName;
    private String nickName;
    private String address;
    private String email;
    private String phone;
    private String password;
    private String role;
    private String status;
    
    public UserDTO() {
        
    }
    
    public UserDTO(int userId, String fullName, String nickName, String address, String email, String phone, String password, String role, String status) {
        this.userId = userId;
        this.fullName = fullName;
        this.nickName = nickName;
        this.address = address;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role = role;
        this.status = status;
    }
    
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    
    public String getNickName() { return nickName; }
    public void setNickName(String nickName) { this.nickName = nickName; }
    
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    
}
