
package br.com.sysight;

import org.apache.commons.dbcp2.BasicDataSource;

public class Conexa2 {

    private final BasicDataSource datasource;
    
    public Conexa2() {
        this.datasource = new BasicDataSource();
        datasource.setDriverClassName("com.mysql.jdbc.Driver");
        datasource.setUrl("jdbc:mysql://localhost:3306/banco1");
        datasource.setUsername("root");
        datasource.setPassword("urubu100");

    }
    public BasicDataSource getDatasource() {
  return datasource;
 }
}
