 package org.commandes.entites;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class Utilisateur {
	private int idUtil;
	private String nomUtil;
	private String PasswordUtil;
	private String adresseUtil;
	private String emailUtil;
	private int typeUtil;    //     ADMIN = 2 ********** USER =1


	public Utilisateur() {
		super();
	}


	public int getIdUtil() {
		return idUtil;
	}


	public void setIdUtil(int idUtil) {
		this.idUtil = idUtil;
	}


	public String getNomUtil() {
		return nomUtil;
	}


	public void setNomUtil(String nomUtil) {
		this.nomUtil = nomUtil;
	}




	public String getAdresseUtil() {
		return adresseUtil;
	}


	public void setAdresseUtil(String adresseUtil) {
		this.adresseUtil = adresseUtil;
	}


	public String getEmailUtil() {
		return emailUtil;
	}


	public void setEmailUtil(String emailUtil) {
		this.emailUtil = emailUtil;
	}


	public String getPasswordUtil() {
		return PasswordUtil;
	}


	public void setPasswordUtil(String passwordUtil) {
		PasswordUtil = passwordUtil;
	}


	public int getTypeUtil() {
		return typeUtil;
	}


	public void setTypeUtil(int typeUtil) {
		this.typeUtil = typeUtil;
	}


	public Utilisateur(int idUtil, String nomUtil, String passwordUtil, String adresseUtil, String emailUtil,
			int typeUtil) {
		super();
		this.idUtil = idUtil;
		this.nomUtil = nomUtil;
		PasswordUtil = passwordUtil;
		this.adresseUtil = adresseUtil;
		this.emailUtil = emailUtil;
		this.typeUtil = typeUtil;
	}


	


}
