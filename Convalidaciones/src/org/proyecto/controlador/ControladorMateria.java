/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyecto.controlador;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import org.proyecto.bd.ConexionMysql;
import org.proyecto.modelo.Materia;

/**
 *
 * @author tomen
 */
public class ControladorMateria {

    public ArrayList<Materia> muestraMateria(String nombreMateria) throws Exception {
        String sql = "SELECT * FROM VistaMateriasPorEspecialidad WHERE Nombre ='" + nombreMateria + "';";
        ConexionMysql conexion = new ConexionMysql();
        Connection conn = null;
        Statement stmt = null;
        ArrayList<Materia> listeditorial = new ArrayList<>();
        try {
            conn = conexion.conectar();
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Materia objM = new Materia();
                objM.setClave(rs.getString(5));
                objM.setNombre_Materia(rs.getString(6));
                listeditorial.add(objM);

            }

            rs.close();
            stmt.close();
            conexion.desconectar();
        } catch (Exception ex) {
            if (stmt != null) {
                System.out.println("Error de consultar cliente: " + ex.toString());
                stmt.close();
            }
            conexion.desconectar();
            throw ex;
        }
        return listeditorial;
    }
}
