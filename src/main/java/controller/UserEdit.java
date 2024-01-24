package controller;

import dao.UserDAO;
import model.User;
import util.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/html/user-edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        HttpSession session = req.getSession();
//        User user = (User) req.getSession().getAttribute("user");
        UserDAO userDAO = new UserDAO();
        String userId = req.getParameter("userId");
        User user = userDAO.getUserById(Integer.parseInt(userId));
                String fullName = req.getParameter("full_name");
                String gender = req.getParameter("gender");
                String dobString = req.getParameter("date");
                String phone = req.getParameter("phone_number");
                String email = req.getParameter("email");
                user.setFullName(fullName);
                user.setGender(gender);
                user.setDob(Date.valueOf(dobString));
                user.setPhoneNumbers(Integer.parseInt(phone));
                user.setEmail(email);
                userDAO.updateUser1(user);
        req.getSession().setAttribute("user", user);
        req.getRequestDispatcher("account.jsp").forward(req, resp);
    }
}
