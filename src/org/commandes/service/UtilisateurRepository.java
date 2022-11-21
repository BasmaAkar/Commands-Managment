package org.commandes.service;

import java.sql.SQLException;
import java.util.List;

import org.commandes.entites.Utilisateur;



public interface UtilisateurRepository {
	public void save(Utilisateur utilisateur) throws SQLException;
	public void update(Utilisateur utilisateur) throws SQLException;
	public void delete(int id) throws SQLException;
	public List<Utilisateur> List() throws SQLException;
	public Utilisateur getById(int id) throws SQLException;
	public Utilisateur getByEmail(String email) throws SQLException;
}
