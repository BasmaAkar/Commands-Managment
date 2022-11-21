package org.commandes.service;

import java.sql.SQLException;
import java.util.List;

import org.commandes.entites.LigneDeCommande;

public interface LigneDeCommandeRepository {
	public void save(LigneDeCommande ligneDeCommande) throws SQLException;
	public void update(LigneDeCommande ligneDeCommande) throws SQLException;
	public void delete(int id) throws SQLException;
	public List<LigneDeCommande> List() throws SQLException;
	public LigneDeCommande getById(int id) throws SQLException;
	public List<LigneDeCommande> getByIdCmd(int id) throws SQLException;
}
