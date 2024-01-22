package Controller;

import DAO.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String error = "";
        UserDAO userDAO = new UserDAO();

        if(!confirmPassword.equals(password)){
            req.setAttribute("invalidateConfimPassword","Mật khẩu không khớp");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }
        if (!Validator.validateEmail(email)) {
            error = "Email không đúng định dạng";
        }
        if(userDAO.checkEmailExist(email)){
            req.setAttribute("invalidateEmail","Email đã được đăng kí");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }
        if(userDAO.resgisterWithEmail(email,username,password)){
            resp.sendRedirect("login.jsp");
        }
    }
}