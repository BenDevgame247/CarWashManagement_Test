
package controller;

import dao.UserDAO;
import dto.LoginDTO;
import dto.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.LoginValidator;

@WebServlet (name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {
    private final UserDAO userDAO = new UserDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        LoginDTO login = new LoginDTO(email, password);
        LoginValidator validate = new LoginValidator();
        
        String error = validate.validate(login);
        
        if (error != null) {
            request.setAttribute("error", error);
            request.setAttribute("login", login);
            request.getRequestDispatcher("/login").forward(request, response);
            return;
        }
        
        UserDTO user = userDAO.login(email.trim(), password.trim());
        
        if (user == null) {
            request.setAttribute("error", "Invalid email or password.");
            request.setAttribute("login", login);
            request.getRequestDispatcher("/login").forward(request, response);
            return;
        }
        
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        
        if ("CUSTOMER".equalsIgnoreCase(user.getRole())) {
            request.getRequestDispatcher("/profile").forward(request, response);
        } else if ("ADMIN".equalsIgnoreCase(user.getRole())) {
            request.getRequestDispatcher("/admin/dashboard").forward(request, response);
        } else {
            request.getRequestDispatcher("/").forward(request, response);
        }
    }
}
