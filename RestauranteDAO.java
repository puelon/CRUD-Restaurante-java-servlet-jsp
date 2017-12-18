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
import models.Restaurante;

/**
 *
 * @author puelon
 */
public class RestauranteDAO {

    private Connection con;

    public RestauranteDAO() {
        con = ConnectionFactory.getConnection();
    }

    /**
     *
     * @param r
     * @return
     */
    public String inserirCliente(Restaurante r) {
        String sql = "insert into clientes values"
                + "(?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, r.getId());
            ps.setString(2, r.getNome());
            ps.setString(3, r.getCpf());
            ps.setString(4, r.getEndereco());
            ps.setString(5, r.getCep());
            ps.executeUpdate();
            return "Sucesso";
        } catch (SQLException ex) {
            return ex.getMessage();
        }
    }

   
    public ArrayList<Restaurante> selectCliente() {
        String sql;
        sql = "select *from clientes order by nome";
        try {
            PreparedStatement ps
                    = con.prepareStatement(sql);
            ResultSet res = ps.executeQuery();
            ArrayList<Restaurante> lista = new ArrayList<>();
            while (res.next()) {
                Restaurante r = new Restaurante();
                r.setId(res.getInt("id"));
                r.setNome(res.getString("nome"));
                r.setCpf(res.getString("cpf"));
                r.setEndereco(res.getString("endereco"));
                r.setCep(res.getString("cep"));
                lista.add(r);
            }
            return lista;
        } catch (SQLException ex) {
            return new ArrayList<>();
        }

    }
    
        public ArrayList<Restaurante> selectCliente(int id) {
        String sql;
        sql = "select * from clientes where id = ? order by nome";
        try {
            PreparedStatement ps
                    = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet res = ps.executeQuery();
            ArrayList<Restaurante> lista = new ArrayList<>();
            while (res.next()) {
                Restaurante r = new Restaurante();
                r.setId(res.getInt("id"));
                r.setNome(res.getString("nome"));
                r.setCpf(res.getString("cpf"));
                r.setEndereco(res.getString("endereco"));
                r.setCep(res.getString("cep"));
                lista.add(r);
            }
            return lista;
        } catch (SQLException ex) {
            return new ArrayList<>();
        }

    }
              
        
        public String editarCliente(Restaurante r) {
                String sql = "update clientes"+"set nome = ?, cpf = ?, endereco = ?, cep = ?"+"where id = ?";
        try {
            PreparedStatement ps = con.prepareCall(sql);
           ps.setString(1, r.getNome());
            ps.setString(2, r.getCpf());
            ps.setString(3, r.getEndereco());
            ps.setString(4, r.getCep());
             ps.setInt(5, r.getId());
            
            ps.executeUpdate();
            return "Atualizado com Sucesso";
        } catch (SQLException ex) {
            return ex.getMessage();
        }
    }
        
    /**
     *
     * @param id
     */
    public void excluirCliente(int id) {
       String sql = "delete from clientes "
                + " where id = ?";
        try{
            PreparedStatement ps = 
            con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        }
        catch(SQLException ex)
        {            
           
        }
    }
}