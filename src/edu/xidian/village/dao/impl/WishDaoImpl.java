package edu.xidian.village.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import edu.xidian.village.dao.WishDao;
import edu.xidian.village.template.VillageHibernateTemplate;
import edu.xidian.village.vo.Wish;

@Repository("wishDao")
public class WishDaoImpl extends VillageHibernateTemplate implements WishDao{

	@Override
	public void addWish(Wish wish) {
		 try {
			this.getHibernateTemplate().save(wish);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage()+e.getStackTrace());
		}
	}

	@Override
	public List<Wish> findAllWish(int aid) {
		return this.getHibernateTemplate().find("from Wish where aid="+aid);
	}


}
