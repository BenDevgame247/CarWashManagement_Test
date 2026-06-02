
package controller;

import dao.RegisterDAO;
import dto.RegisterDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.RegisterValidator;

@WebServlet (name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet {
    
    private final RegisterDAO registerDAO = new RegisterDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("full_name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        
        RegisterDTO register = new RegisterDTO(
                fullName,
                email,
                phone,
                password
        );
        
        RegisterValidator validator = new RegisterValidator();
        String error = validator.validate(register);
        
        if (error != null) {
            request.setAttribute("error", error);
            request.setAttribute("register", register);
            request.getRequestDispatcher("/register").forward(request, response);
            return;
        }
        
        if (registerDAO.isEmailExist(email)) {
            request.setAttribute("error", "Email already exists.");
            request.setAttribute("register", register);
            request.getRequestDispatcher("/register").forward(request, response);
            return;
        }
        
        boolean success = registerDAO.registerCustomer(register);
        
        if (success) {
            request.getRequestDispatcher("/login").forward(request, response);
            return;
        } else {
            request.setAttribute("error", "Register failed: " + registerDAO.getLastError());
            request.setAttribute("register", register);
            request.getRequestDispatcher("/register").forward(request, response);
            return;
        }
    }
}
