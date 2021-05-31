package ua.ihorChikh.travelAgency.dao;

import ua.ihorChikh.travelAgency.ConnectionPool;
import ua.ihorChikh.travelAgency.model.Tour;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourDAOImpl {

    //CREATE
    public boolean insertTour(Tour tour) {
        String query = "insert into tour " +
                "(name, type, price, persons, hotel_rate, hot, discount_step, discount_max_value, description) " +
                "values (?,?,?,?,?,?,?,?,?)";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, tour.getName());
            preparedStatement.setString(2, tour.getType());
            preparedStatement.setInt(3, tour.getPrice());
            preparedStatement.setInt(4, tour.getPersons());
            preparedStatement.setInt(5, tour.getHotelRate());
            preparedStatement.setBoolean(6, tour.isHot());
            preparedStatement.setInt(7, tour.getDiscountStep());
            preparedStatement.setInt(8, tour.getDiscountMaxValue());
            preparedStatement.setString(9, tour.getDescription());
            res = preparedStatement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //READ
    public Tour findTourById(int id) {
        String query = "select * " +
                "from tour " +
                "where id = ?";
        Tour tour = null;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    tour = new Tour(resultSet.getInt("id"),
                            resultSet.getString("name"),
                            resultSet.getString("type"),
                            resultSet.getInt("price"),
                            resultSet.getInt("persons"),
                            resultSet.getInt("hotel_rate"),
                            resultSet.getBoolean("hot"),
                            resultSet.getInt("discountStep"),
                            resultSet.getInt("discountMaxValue"),
                            resultSet.getString("description"));
                }
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return tour;
    }

    public List<Tour> findAllTours() {
        String query = "select * from tour";
        List<Tour> tours = new ArrayList<>();
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                tours.add(new Tour(resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("type"),
                        resultSet.getInt("price"),
                        resultSet.getInt("persons"),
                        resultSet.getInt("hotel_rate"),
                        resultSet.getBoolean("hot"),
                        resultSet.getInt("discount_step"),
                        resultSet.getInt("discount_max_value"),
                        resultSet.getString("description")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tours;
    }

    //UPDATE
    public boolean updateTour(Tour tour) {
        String query = "update tour " +
                "set " +
                "name = ?," +
                "type = ?," +
                "price = ?," +
                "persons = ?," +
                "hotel_rate = ?," +
                "hot = ?," +
                "discount_step = ?," +
                "discount_max_value = ?," +
                "description = ?" +
                "where id = ?";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, tour.getName());
            statement.setString(2, tour.getType());
            statement.setInt(3, tour.getPrice());
            statement.setInt(4, tour.getPersons());
            statement.setInt(5, tour.getHotelRate());
            statement.setBoolean(6, tour.isHot());
            statement.setInt(7, tour.getDiscountStep());
            statement.setInt(8, tour.getDiscountMaxValue());
            statement.setString(9, tour.getDescription());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //DELETE
    public boolean deleteTourById(int id) {
        String query = "delete " +
                "from tour " +
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
