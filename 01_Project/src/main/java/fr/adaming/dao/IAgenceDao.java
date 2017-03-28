package fr.adaming.dao;

import java.util.List;

import fr.adaming.entities.Agence;

/**
 * @author inti0292
 *
 */
public interface IAgenceDao {

	/**
	 * @param agence
	 */
	public void addAgence(Agence agence);

	/**
	 * @param agence
	 */
	public void deleteAgence(Agence agence);

	/**
	 * @return
	 */
	public List<Agence> getList();

	/**
	 * @param id
	 * @return
	 */
	public Agence getAgence(int id);

	/**
	 * @param agence
	 */
	public void updateAgence(Agence agence);

}
