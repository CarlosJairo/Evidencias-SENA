/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Carlos Chamorro
 */
public class Conexion {
    public DriverManagerDataSource Conectar (){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/registro");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }
}
