
package utils;

import dto.LoginDTO;

public class LoginValidator {
    
    public String validate(LoginDTO login) {
        
        if (login == null) {
            return "Login data is required.";
        }
        
        if (isBlank(login.getEmail())) {
            return "Email is required.";
        }
        
        if (!login.getEmail().trim().matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
            return "Email format is invalid.";
        }
        
        if (isBlank(login.getPassword())) {
            return "Password is required.";
        }
        return null;
    }
    
    private boolean isBlank(String value) {
        return value == null || value.trim().isEmpty();
    }
}
