/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package trabalho.pkgdo.antonio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Clodoaldo Brasilino Leite Neto © reserveds
 */
public class TestaBanco {
    public static void main(String[] args) throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbConnection = DriverManager.getConnection("jdbc:mysql://localhost/carros", "root", "aluno");
        
        // Consultando dados
        Statement query = dbConnection.createStatement();
        ResultSet resultados = query.executeQuery("SELECT id_marca, marca FROM marca");
        while(resultados.next()){
            resultados.getInt("id_marca");
            resultados.getString("marca");
        }
        
        // Alterando o BD
        Statement insert = dbConnection.createStatement();
        Integer linhasAfetadas = insert.executeUpdate("insert into marca (id_marca, marca) values (7,'Daihatsu')");
        if(linhasAfetadas > 0)
            System.out.println("Alterou "+linhasAfetadas+" linhas no tabela.");
        else
            System.out.println("Não alterou nada na tabela");
    }
}
