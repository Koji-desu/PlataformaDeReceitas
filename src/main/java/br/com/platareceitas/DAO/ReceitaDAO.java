package br.com.platareceitas.DAO;
import br.com.platareceitas.MODEL.Receita;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class ReceitaDAO {

    public void createReceita(Receita receita){
        String SQL = "INSERT INTO RECEITA (NAME) VALUES (?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, receita.getName());


            preparedStatement.execute();

            System.out.println("success in insert receita");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

}
