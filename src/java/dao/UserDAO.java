
package dao;

import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.utils.DBContext;

public class UserDAO {
    
    public UserDTO login(String email, String password) {
        String getInfoLogin = 
                "SELECT user_id, full_name, nick_name, address, email, phone, password_hash, role, status " +
                "FROM dbo.Users " +
                "WHERE email = ? AND password_hash = ? AND status = 'ACTIVE'";
        
        try (Connection conn = new DBContext().getConnection()) {
            
            PreparedStatement ps = conn.prepareStatement(getInfoLogin);
            ps.setString(1, email);
            ps.setString(2, password);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new UserDTO(
                            rs.getInt("user_id"),
                            rs.getString("full_name"),
                            rs.getString("nick_name"),
                            rs.getString("address"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("password_hash"),
                            rs.getString("role"),
                            rs.getString("status")
                    );
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return null;
    }
}
