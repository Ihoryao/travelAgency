package ua.ihorChikh.travelAgency.dao;

import ua.ihorChikh.travelAgency.ConnectionPool;
import ua.ihorChikh.travelAgency.model.TourImage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourImageDAOImpl {
    //CREATE
    public boolean insertTourImage(TourImage tourImage) {
        String query = "insert into tour_image " +
                "(tour_id, imageurl) " +
                "values (?,?)";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, tourImage.getTourId());
            statement.setString(2, tourImage.getImageURL());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //READ
    public TourImage findTourImageById(int id) {
        String query = "select * " +
                "from tour_image " +
                "where id = ?";
        TourImage tourImage = null;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            preparedStatement.setInt(1, id);
            while (resultSet.next()) {
                tourImage = new TourImage(resultSet.getInt("id"),
                        resultSet.getInt("tour_id"),
                        resultSet.getString("imageurl"));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return tourImage;
    }

    public List<TourImage> findAllTourImages() {
        String query = "select * from tour_image";
        List<TourImage> tourImages = new ArrayList<>();
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                tourImages.add(new TourImage(resultSet.getInt("id"),
                        resultSet.getInt("tour_id"),
                        resultSet.getString("imageurl")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tourImages;
    }

    //UPDATE
    public boolean updateTourImage(TourImage tourImage) {
        String query = "update tour_image " +
                "set " +
                "tour_id = ?," +
                "imageurl = ?" +
                "where id = ?";
        boolean res = false;
        try (Connection connection = ConnectionPool.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, tourImage.getTourId());
            statement.setString(2, tourImage.getImageURL());
            res = statement.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return res;
    }

    //DELETE
    public boolean deleteTourImageById(int id) {
        String query = "delete " +
                "from tour_image " +
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
