package edu.xidian.village.dao.impl;



import org.springframework.stereotype.Repository;

import edu.xidian.village.dao.AdminDao;
import edu.xidian.village.template.VillageHibernateTemplate;
import edu.xidian.village.vo.Admin;
@Repository("adminDao")
public class AdminDaoImpl extends VillageHibernateTemplate implements AdminDao{

	@Override
	public Admin getAdmin(String name)throws Exception {
		
		return (Admin) getHibernateTemplate().find("from Admin where name = ?",name).get(0);
	}



}
