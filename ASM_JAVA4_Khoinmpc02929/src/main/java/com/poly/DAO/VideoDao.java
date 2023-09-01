package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.Tool.JpaUltils;

import Entity.Video;

public class VideoDao {
	private EntityManager em = JpaUltils.getEntityManger();

	@Override
	protected void finalize() throws Throwable {
		em.close();
	}

	public Video create(Video entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Video update(Video entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Video remove(String id) {
		Video entity = null;
		em.getTransaction().begin();
		try {
			entity = findById(id);
			if (entity != null)
				em.remove(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Video findById(String id) {
		Video entity = em.find(Video.class, id);
		return entity;
	}

	public List<Video> findAll() {
		TypedQuery<Video> query = em.createQuery("FROM Video", Video.class);
		return query.getResultList();
	}

	public List<Video> findpage(int page, int size) {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setFirstResult(page);
		query.setMaxResults(size);
		List<Video> list = query.getResultList();
		return list;

	}

	public List<Video> findFavorites() {
		String jpql = "SELECT DISTINCT o.video FROM Favorite o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> v = query.getResultList();
		return v;
	}

	public List<Video> findShare() {
		String jpql = "SELECT DISTINCT o.video from Share o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> v = query.getResultList();
		return v;
	}
}
