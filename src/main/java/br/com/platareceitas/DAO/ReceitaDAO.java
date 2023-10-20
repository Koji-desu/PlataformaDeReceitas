package br.com.platareceitas.DAO;
import br.com.platareceitas.MODEL.Receita;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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
    public List<Receita> findAllReceitas(){
        String SQL = "SELECT * FROM RECEITA";
        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Receita> receitas = new ArrayList<>();

            while (resultSet.next()) {

                String receitaName = resultSet.getString("name");

                Receita receita = new Receita(receitaName);

                receitas.add(receita);

            }

            System.out.println("success in select * receita");

            connection.close();

            return receitas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }
}
