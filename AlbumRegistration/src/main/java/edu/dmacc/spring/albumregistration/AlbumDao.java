package edu.dmacc.spring.albumregistration;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class AlbumDao {

	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AlbumRegistration");
	
	public void insertAlbum(Album albumToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(albumToAdd);
		em.getTransaction().commit();
		//em.close();
	}
	
	public List<Album>getAllAlbums(){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select a from Album a";
		TypedQuery<Album>typedQuery = em.createQuery(q, Album.class);
		List<Album>all = typedQuery.getResultList();
		return all;
	}
	
}
