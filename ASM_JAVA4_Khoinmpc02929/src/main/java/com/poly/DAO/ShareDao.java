package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.Tool.JpaUltils;

import Entity.FavoriteUserRP;
import Entity.Share;
import Entity.ShareRP;
import Entity.Video;

public class ShareDao {
	private EntityManager em = JpaUltils.getEntityManger();

	@Override
	protected void finalize() throws Throwable {
		em.close();
	}

	public Share create(Share entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Share update(Share entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Share remove(String id) {
		Share entity = null;
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

	public Share findById(String id) {
		Share entity = em.find(Share.class, id);
		return entity;
	}

	public List<Share> findAll() {
		TypedQuery<Share> query = em.createQuery("FROM Share", Share.class);
		return query.getResultList();
	}

	public List<ShareRP> ShareRP(String videoId) {
		String jpql = "select new Entity.ShareRP(o.user.fullname, o.user.email,o.email,"
				+ "o.shareDate) from Share o where o.video.id =: videoId";
		List<ShareRP> list = null;
		try {
			TypedQuery<ShareRP> query = em.createQuery(jpql, ShareRP.class);

			query.setParameter("videoId", videoId);
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}

}
