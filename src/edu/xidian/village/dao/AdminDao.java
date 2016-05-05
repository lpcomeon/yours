package edu.xidian.village.dao;

import edu.xidian.village.vo.Admin;

public interface AdminDao {

	public Admin getAdmin(String name)throws Exception;
	
	public Admin get(Class<? extends Admin> c,int id);
	public void add(Admin admin);
	
}
