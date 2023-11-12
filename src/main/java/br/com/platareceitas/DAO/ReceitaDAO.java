package br.com.platareceitas.DAO;
import br.com.platareceitas.MODEL.Receita;
import br.com.platareceitas.servlet.config.ConnectionPoolConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ReceitaDAO {

    public void createReceita(Receita receita) {
        String SQL = "INSERT INTO RECEITA (NAME, DESCRIPTION, INSTRUCTIONS, TIME, CATEGORY, DIFFICULTY, IMAGE) VALUES (?,?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, receita.getName());
            preparedStatement.setString(2, receita.getDescription());
            preparedStatement.setString(3, receita.getInstructions());
            preparedStatement.setInt(4, receita.getTime());
            preparedStatement.setString(5, receita.getCategory());
            preparedStatement.setString(6, receita.getDifficulty());
            preparedStatement.setString(7, receita.getImage());


            preparedStatement.execute();

            System.out.println("success in insert receita");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

    public List<Receita> findAllReceitas() {
        String SQL = "SELECT * FROM RECEITA";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Receita> receitas = new ArrayList<>();

            while (resultSet.next()) {

                String receitaId = resultSet.getString("id");
                String receitaName = resultSet.getString("name");
                String receitaDescription = resultSet.getString("description");
                String receitaInstructions = resultSet.getString("instructions");
                int receitaTime = resultSet.getInt("time");
                String receitaCategory = resultSet.getString("category");
                String receitaDifficulty = resultSet.getString("difficulty");
                String receitaImage = resultSet.getString("image");


                Receita receita = new Receita(receitaId, receitaName, receitaDescription, receitaInstructions, receitaTime, receitaCategory, receitaDifficulty, receitaImage);

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

    public void deleteReceitaById(String id) {

        String SQL = "DELETE RECEITA WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, id);


            preparedStatement.execute();

            System.out.println("success on delete receita with id: " + id);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public void updateReceita(Receita receita) {
        String SQL = "UPDATE RECEITA SET NAME = ? WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, receita.getName());
            preparedStatement.setString(2, receita.getId());
            preparedStatement.execute();

            System.out.println("success in update receita");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }
    }

    public List<Receita> findReceita(String busca) {
        /* Find By name */
        String SQL = "select * from receita where name like ?";
        System.out.println("Buscando por: "+busca);
        try {

            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1,"%"+busca+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Receita> receitas = new ArrayList<>();

            while (resultSet.next()) {

                String receitaId = resultSet.getString("id");
                String receitaName = resultSet.getString("name");
                String receitaDescription = resultSet.getString("description");
                String receitaInstructions = resultSet.getString("instructions");
                int receitaTime = resultSet.getInt("time");
                String receitaCategory = resultSet.getString("category");
                String receitaDifficulty = resultSet.getString("difficulty");
                String receitaImage = resultSet.getString("image");


                Receita receita = new Receita(receitaId, receitaName, receitaDescription, receitaInstructions, receitaTime, receitaCategory, receitaDifficulty, receitaImage);

                receitas.add(receita);

            }

            System.out.println("success in select * where receita");

            connection.close();

            return receitas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }
    public List<Receita> findReceitaById(String busca) {
        /* Find By name */
        String SQL = "select * from receita where id like ?";
        System.out.println("Buscando por ID: "+busca);
        try {

            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1,busca);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Receita> receitas = new ArrayList<>();

            while (resultSet.next()) {

                String receitaId = resultSet.getString("id");
                String receitaName = resultSet.getString("name");
                String receitaDescription = resultSet.getString("description");
                String receitaInstructions = resultSet.getString("instructions");
                int receitaTime = resultSet.getInt("time");
                String receitaCategory = resultSet.getString("category");
                String receitaDifficulty = resultSet.getString("difficulty");
                String receitaImage = resultSet.getString("image");


                Receita receita = new Receita(receitaId, receitaName, receitaDescription, receitaInstructions, receitaTime, receitaCategory, receitaDifficulty, receitaImage);

                receitas.add(receita);

            }

            System.out.println("success in select * where receita");

            connection.close();

            return receitas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Receita> findReceitaByCategory(String category) {
        /* Find By name */
        String SQL = "select * from receita where category like ?";
        System.out.println("Receitas da categoria: "+category);
        try {

            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1,category);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Receita> receitas = new ArrayList<>();

            while (resultSet.next()) {

                String receitaId = resultSet.getString("id");
                String receitaName = resultSet.getString("name");
                String receitaDescription = resultSet.getString("description");
                String receitaInstructions = resultSet.getString("instructions");
                int receitaTime = resultSet.getInt("time");
                String receitaCategory = resultSet.getString("category");
                String receitaDifficulty = resultSet.getString("difficulty");
                String receitaImage = resultSet.getString("image");


                Receita receita = new Receita(receitaId, receitaName, receitaDescription, receitaInstructions, receitaTime, receitaCategory, receitaDifficulty, receitaImage);

                receitas.add(receita);

            }

            System.out.println("success in select * where receita category");

            connection.close();

            return receitas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

}
