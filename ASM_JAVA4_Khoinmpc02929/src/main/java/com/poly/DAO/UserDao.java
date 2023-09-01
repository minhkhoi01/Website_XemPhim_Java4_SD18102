package com.poly.DAO;

import java.util.List;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.Tool.JpaUltils;

import Entity.User;
import Entity.Video;

public class UserDao {
	private EntityManager em = JpaUltils.getEntityManger();

	@Override
	protected void finalize() throws Throwable {
		em.close();
	}

	public User create(User entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public User update(User entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);
			em.getTransaction().commit();
		} catch (Exception ex) {
			em.getTransaction().rollback();
		}
		return entity;
	}

	public User remove(String id) {
		User entity = null;
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

	public User findById(String id) {
		User entity = em.find(User.class, id);
		return entity;
	}

	public User findByEmail(String email) {
		User entity = em.find(User.class, email);
		return entity;
	}

	public List<User> findAll() {
		TypedQuery<User> query = em.createQuery("FROM User", User.class);
		return query.getResultList();
	}

	public User findIdAndEmail(String id, String email) {
		String jpdl = "select o from User o where o.id=: id and o.email=: email";
		try {
			TypedQuery<User> query = em.createQuery(jpdl, User.class);
			query.setParameter("id", id);
			query.setParameter("email", email);

			return query.getSingleResult();
		} finally {
			em.close();
		}

	}

	public List<User> findpage(int page, int size) {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setFirstResult(page);
		query.setMaxResults(size);
		List<User> list = query.getResultList();
		return list;

	}
}
