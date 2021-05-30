package ua.ihorChikh.travelAgency.dao;

import ua.ihorChikh.travelAgency.model.User;

import java.util.List;

public interface UserDAO {

    //CREATE
    boolean insertUser(User user);

    //READ
    User findUserById(int id);

    List<User> findAllUsers();

    //UPDATE
    boolean updateUser(User user);

    //DELETE
    boolean deleteUserById(int id);
}
