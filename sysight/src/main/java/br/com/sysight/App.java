/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.sysight;

import java.net.UnknownHostException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author user
 */
public class App {
    public static void main(String[] args) {
   
        Conexao con = new Conexao();
        JdbcTemplate config = new JdbcTemplate(con.getDatasource());

        Recurso recurso = new Recurso();

        // Parametros para o primeiro insert
   
        String momento =  recurso.getMomento();
        String consumoRam = String.format("%.2f", recurso.getConsumoRam());
        String consumoCpu = String.format("%.2f", recurso.getConsumoCPU());
        String consumoDisco = String.format("%.2f", recurso.getConsumoDisco());
       
      
        // Texto padrão para insert
        String insertStatement = "INSERT INTO Recurso (consumoRam, consumoCpu, consumoDisco, momento) VALUES ( ?, ?, ?, ?)";
        
        // Utilizamos o comando "update" para inserir e/ou atualizar registros.
        // Podemos utilizar variavéis como o exemplo abaixo:
                //ALTERE A FK DE ACORDO COM SEU EQUIPAMENTO
                config.update(insertStatement, consumoRam, consumoCpu, consumoDisco, momento);
              

        // Para buscar informações devemos utilizar o comando queryForList ou query,
        // exemplo de uso do queryForList:
        List recursoSimpleUse = config.queryForList("SELECT * FROM Recurso");

        // Exibindo o resultado
        System.out.println("Dados de sua máquina:");
        System.out.println(recursoSimpleUse);
    }
}
