package org.commandes.service;

import java.sql.SQLException;
import java.util.List;

import org.commandes.entites.Commande;


public interface CommandeRepository {
	public void save(Commande commande) throws SQLException;
	public void update(Commande commande) throws SQLException;
	public void delete(int id) throws SQLException;
	public List<Commande> List() throws SQLException;
	public Commande getById(int id) throws SQLException;
	public List<Commande> getByIdUser(int id) throws SQLException;
}
