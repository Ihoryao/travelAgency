package ua.ihorChikh.travelAgency.dao.userDao;

import ua.ihorChikh.travelAgency.ConnectionPool;
import ua.ihorChikh.travelAgency.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
    //CREATE
    public boolean insertUser(User user) {
        String query = "insert into \"user\" " +
                "(first_name, last_name, email, password) " +
                "values (?,?,?,?)";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }
}
