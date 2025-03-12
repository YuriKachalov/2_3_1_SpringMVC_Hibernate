package hiber.dao;

import hiber.model.User;

import java.util.List;

public interface UserDao {

    void deleteUser(int id);

    void saveUser(User user);

    List<User> listUsers();

    User getUserId(int id);
}
