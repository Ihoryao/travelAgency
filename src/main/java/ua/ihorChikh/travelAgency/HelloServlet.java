package ua.ihorChikh.travelAgency;

import ua.ihorChikh.travelAgency.dao.UserDAO;
import ua.ihorChikh.travelAgency.dao.UserDAOImpl;
import ua.ihorChikh.travelAgency.model.User;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        UserDAO userDAO = new UserDAOImpl();
        PrintWriter out = response.getWriter();

       // User user = userDAO.findUserById(1);
        out.println("<html><body>");
        out.println("<p>" + userDAO.findAllUsers() + "</p>");
        out.println("<br><br>");
        out.println("<p>" + userDAO.findUserById(2) + "</p>");
        out.println("</body></html>");
    }
}