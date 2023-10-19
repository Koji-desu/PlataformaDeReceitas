package br.com.platareceitas.DAO;
import br.com.platareceitas.MODEL.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class UserDAO {

    public void createUser(User user){
        String SQL = "INSERT INTO USUARIO (NAME, EMAIL, PASSWORD) VALUES (?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.execute();

            System.out.println("success in insert receita");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

}
