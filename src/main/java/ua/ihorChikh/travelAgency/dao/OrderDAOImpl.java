package ua.ihorChikh.travelAgency.dao;

import ua.ihorChikh.travelAgency.ConnectionPool;
import ua.ihorChikh.travelAgency.model.Order;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAOImpl {
    //CREATE
    public boolean insertOrder(Order order) {
        String query = "insert into \"order\" " +
                "(user_id, tour_id, status, registration_date, payment_date) " +
                "values (?,?,?,?,?)";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, order.getUserId());
            statement.setInt(2, order.getTourId());
            statement.setString(3, order.getStatus());
            statement.setDate(4, order.getRegistrationDate());
            statement.setDate(5, order.getPaymentDate());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //READ
    public Order findOrderById(int id) {
        String query = "select * " +
                "from \"order\" " +
                "where id = ?";
        Order order = null;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            preparedStatement.setInt(1, id);
            while (resultSet.next()) {
                order = new Order(resultSet.getInt("id"),
                        resultSet.getInt("user_id"),
                        resultSet.getInt("tour_id"),
                        resultSet.getString("status"),
                        resultSet.getDate("registration_date"),
                        resultSet.getDate("payment_date"));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return order;
    }

    public List<Order> findAllOrders() {
        String query = "select * from \"order\"";
        List<Order> orders = new ArrayList<>();
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                orders.add(new Order(resultSet.getInt("id"),
                        resultSet.getInt("user_id"),
                        resultSet.getInt("tour_id"),
                        resultSet.getString("status"),
                        resultSet.getDate("registration_date"),
                        resultSet.getDate("payment_date")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    //UPDATE
    public boolean updateOrder(Order order) {
        String query = "update \"order\" " +
                "set " +
                "user_id = ?," +
                "tour_id = ?," +
                "status = ?," +
                "registration_date = ?," +
                "payment_date = ?" +
                "where id = ?";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, order.getUserId());
            statement.setInt(2, order.getTourId());
            statement.setString(3, order.getStatus());
            statement.setDate(4, order.getRegistrationDate());
            statement.setDate(5, order.getPaymentDate());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //DELETE
    public boolean deleteOrderById(int id) {
        String query = "delete " +
                "from \"order\" " +
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
