package com.poly.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.Tool.JpaUltils;

import Entity.Favorite;
import Entity.FavoriteRP;
import Entity.FavoriteUserRP;
import Entity.Share;
import Entity.User;
import Entity.Video;

public class FavoriteDao {
	private EntityManager em = JpaUltils.getEntityManger();

	@Override
	protected void finalize() throws Throwable {
		em.close();
	}

	public Favorite create(Favorite entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Favorite update(Favorite entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public Favorite remove(String id) {
		Favorite entity = null;
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

	public Favorite findById(String id) {
		Favorite entity = em.find(Favorite.class, id);
		return entity;
	}

	public List<Favorite> findAll() {
		TypedQuery<Favorite> query = em.createQuery("FROM Favorite", Favorite.class);
		return query.getResultList();
	}

	public List<FavoriteRP> RB() {
		String jpql = "select new Entity.FavoriteRP(o.video.title, count(o), min(o.likeDate), max(o.likeDate))"
				+ "from Favorite o group by o.video.title";

		List<FavoriteRP> list = null;
		try {
			TypedQuery<FavoriteRP> query = em.createQuery(jpql, FavoriteRP.class);
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}

	public List<FavoriteUserRP> UserRB(String videoId) {
		String jpql = "select new Entity.FavoriteUserRP(o.user.id, o.user.fullname, o.user.email,"
				+ "o.likeDate) from Favorite o where o.video.id =: videoId";

		List<FavoriteUserRP> list = null;
		try {
			TypedQuery<FavoriteUserRP> query = em.createQuery(jpql, FavoriteUserRP.class);

			query.setParameter("videoId", videoId);
			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}

	public List<Favorite> findUserIdAndVideoId(User userId, Video videoId) {
		String jpql = "select o from Favorite o where o.user=: userId and o.video=: videoId";
		try {
			TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
			query.setParameter("userId", userId);
			query.setParameter("videoId", videoId);

			return query.getResultList();
		} finally {
//			em.close();
		}

	}

}