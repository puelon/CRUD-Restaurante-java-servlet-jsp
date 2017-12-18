/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.Menu;

/**
 *
 * @author puelon
 */
public class MenuDAO {
    
    private final Connection conn;

    public MenuDAO() {
        conn = ConnectionFactory.getConnection();
    }
    
              public ArrayList<Menu> selectMenu() {
        String sql;
        sql = "select * from menu order by nome";
        try {
            PreparedStatement ps
                    = conn.prepareStatement(sql);
            ResultSet res = ps.executeQuery();
            ArrayList<Menu> lista1 = new ArrayList<>();
            while (res.next()) {
                Menu m = new Menu();
                m.setId(res.getInt("id"));
                m.setNome(res.getString("nome"));
                m.setPreco(res.getString("preco"));
                m.setTipo(res.getString("tipo"));
                lista1.add(m);
            }
            return lista1;
        } catch (SQLException ex) {
            return new ArrayList<>();
        }

    }
              
                      public ArrayList<Menu> selectMenu(int id) {
        String sql;
        sql = "select * from menu where id = ? order by nome";
        try {
            PreparedStatement ps
                    = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet res = ps.executeQuery();
            ArrayList<Menu> lista1 = new ArrayList<>();
            while (res.next()) {
                Menu m = new Menu();
                m.setId(res.getInt("id"));
                m.setNome(res.getString("nome"));
                m.setPreco(res.getString("preco"));
                m.setTipo(res.getString("tipo"));
                lista1.add(m);
            }
            return lista1;
        } catch (SQLException ex) {
            return new ArrayList<>();
        }

    }  
        public void excluirMenu(int id) {
       String sql = "delete from menu"
                + " where id = ?";
        try{
            PreparedStatement ps = 
            conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        }
        catch(SQLException ex)
        {            
           
        }
    }
                public String inserirMenu(Menu m) {
        String sql = "insert into menu values"
                + "(?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, m.getId());
            ps.setString(2, m.getNome());
            ps.setString(3, m.getPreco());
            ps.setString(4, m.getTipo());
            ps.executeUpdate();
            return "Sucesso";
        } catch (SQLException ex) {
            return ex.getMessage();
        }
    }
                
                
                        
             public String editarMenu(Menu m) {
        String sql = "update menu "+
        "set nome = ?, preco = ?, tipo=?"
                + " where id = ?";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
           ps.setString(1, m.getNome());
            ps.setString(2, m.getPreco());
            ps.setString(3, m.getTipo());
             ps.setInt(4, m.getId());
            ps.executeUpdate();
            return "Atualizado com Sucesso";
        } catch (SQLException ex) {
            return ex.getMessage();
        }
             }
}
           
 
