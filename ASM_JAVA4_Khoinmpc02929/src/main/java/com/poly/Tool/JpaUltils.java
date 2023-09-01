package com.poly.Tool;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUltils {
	private static EntityManagerFactory gb;

	public static EntityManager getEntityManger() {
		if (gb == null || !gb.isOpen()) {
			gb = Persistence.createEntityManagerFactory("HoLy");
		}
		return gb.createEntityManager();
	}

	public static void shutdown() {
		if (gb != null || gb.isOpen()) {
			gb.close();
		}
		gb = null;
	}
}
