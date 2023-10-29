package br.com.platareceitas.DAO;
import br.com.platareceitas.MODEL.User;
import br.com.platareceitas.servlet.config.ConnectionPoolConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserDAO {

    public void createUser(User user){
        String SQL = "INSERT INTO USUARIO (NAME, EMAIL, PASSWORD) VALUES (?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.execute();

            System.out.println("success in insert user");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }
    public List<User> findAllUser(){
        String SQL = "SELECT * FROM USUARIO";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<User> users = new ArrayList<>();

            while (resultSet.next()) {

                String userId = resultSet.getString(("id"));
                String userName = resultSet.getString("name");
                String userEmail = resultSet.getString("email");
                String userPassword = resultSet.getString("password");

                User user = new User(userId, userName, userEmail, userPassword);

                users.add(user);

            }

            System.out.println("success in select * receita");

            connection.close();

            return users;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }
    public void deleteUserById(String id){

        String SQL = "DELETE USUARIO WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, id);


            preparedStatement.execute();

            System.out.println("success on delete user with id: "+id);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public void updateUser(User user){
        String SQL = "UPDATE USUARIO SET NAME = ? WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getId());
            preparedStatement.execute();

            System.out.println("success in update user");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }
    }
    public boolean loginUser(String user, String senha){
        boolean autenticado = false;

        String SQL = "SELECT EMAIL, PASSWORD FROM USUARIO WHERE EMAIL = ? AND PASSWORD = ?";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user);
            preparedStatement.setString(2, senha);

            ResultSet rs;
            rs = preparedStatement.executeQuery();

            if(rs.next()){
                String loginUser = rs.getString("email");
                String passUser = rs.getString("password");
                autenticado = true;

            }

            preparedStatement.close();

            return autenticado;





        } catch (Exception e) {

            System.out.println("fail in database connection");
            return autenticado;
        }

    }
}
