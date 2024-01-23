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
        String active = req.getParameter("active");
//        switch (active) {
//            case "info":
                String fullName = req.getParameter("full_name");
                String gender = req.getParameter("gender");
                String dobString = req.getParameter("date");
                String phone = req.getParameter("phone_number");
                String email = req.getParameter("email");
                user.setFullName(fullName);
                user.setGender(gender);
                user.setDob(Date.valueOf(dobString));
                user.setEmail(email);
                userDAO.updateUser1(user);
//                if (!user.getFullName().equals(fullName)) {
//                    userDAO.updateUser(user.getUserID(), "fullName", fullName);
//                }
//                if (!user.getGender().equals(gender)) {
//                    userDAO.updateUser(user.getUserID(), "gender", gender);
//                }
//
//                if (!user.getDobString().equals(dobString)) {
//                    userDAO.updateUser(user.getUserID(), "dob", dobString);
//                }
//
//                if (user.getPhoneNumbers() != Integer.parseInt(phone)) {
//                    userDAO.updateUser(user.getUserID(), "phoneNumbers", phone);
//                }
//                if (email.contains("@") && !user.getEmail().equals(email)) {
//                    userDAO.updateUser(user.getUserID(), "email", email);
//                }
//
                System.out.println("cap nhat thanh cong");
//                break;
//
//            case "pass":
//                System.out.println("thay doi pass");
//                String oldpass = req.getParameter("oldpass");
//                String newpass1 = req.getParameter("newpass1");
//                String newpass2 = req.getParameter("newpass2");
//
//                if (user.getPassword().equals(oldpass) && newpass1.equals(newpass2)) {
//                    userDAO.updateUser(user.getUserID(), "password", newpass1);
//                }
//
//
//                break;
//            default:
//                System.out.println("sai cau lenh");
//        }
        req.getSession().setAttribute("user", user);
        req.getRequestDispatcher("account.jsp").forward(req, resp);
    }
}
