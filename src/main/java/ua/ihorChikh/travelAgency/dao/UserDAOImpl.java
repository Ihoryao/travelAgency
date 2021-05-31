package ua.ihorChikh.travelAgency.dao;

import ua.ihorChikh.travelAgency.ConnectionPool;
import ua.ihorChikh.travelAgency.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {

    //CREATE
    @Override
    public boolean insertUser(User user) {
        String query = "insert into \"user\" " +
                "(role, first_name, last_name, email, password, discount, blocked) " +
                "values (?,?,?,?,?,?,?)";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, user.getRole());
            statement.setString(2, user.getFirstName());
            statement.setString(3, user.getLastName());
            statement.setString(4, user.getEmail());
            statement.setString(5, user.getPassword());
            statement.setInt(6, user.getDiscount());
            statement.setBoolean(7, user.isBlocked());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //READ
    @Override
    public User findUserById(int id) {
        String query = "select * " +
                "from \"user\" " +
                "where id = ?";
        User user = null;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    user = new User(resultSet.getInt("id"),
                            resultSet.getString("role"),
                            resultSet.getString("first_name"),
                            resultSet.getString("last_name"),
                            resultSet.getString("email"),
                            resultSet.getString("password"),
                            resultSet.getInt("discount"),
                            resultSet.getBoolean("blocked"));
                }
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return user;
    }

    @Override
    public List<User> findAllUsers() {
        String query = "select * from \"user\"";
        List<User> users = new ArrayList<>();
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                users.add(new User(resultSet.getInt("id"),
                        resultSet.getString("role"),
                        resultSet.getString("first_name"),
                        resultSet.getString("last_name"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getInt("discount"),
                        resultSet.getBoolean("blocked")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    //UPDATE
    @Override
    public boolean updateUser(User user) {
        String query = "update \"user\" " +
                "set " +
                "role = ?," +
                "first_name = ?," +
                "last_name = ?," +
                "email = ?," +
                "password = ?," +
                "discount = ?," +
                "blocked = ?" +
                "where id = ?";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, user.getRole());
            statement.setString(2, user.getFirstName());
            statement.setString(3, user.getLastName());
            statement.setString(4, user.getEmail());
            statement.setString(5, user.getPassword());
            statement.setInt(6, user.getDiscount());
            statement.setBoolean(7, user.isBlocked());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //DELETE
    @Override
    public boolean deleteUserById(int id) {
        String query = "delete " +
                "from \"user\" " +
                "where id = ?";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            res = preparedStatement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }
}
