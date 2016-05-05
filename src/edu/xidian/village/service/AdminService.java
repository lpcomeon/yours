package edu.xidian.village.service;


import edu.xidian.village.vo.Admin;

public interface AdminService {
	
	public Admin login(Admin admin);
	
	public void add(Admin admin);
	
	public boolean logout();

	public boolean checkPassword(Admin admin);
	
	public Admin getAdmin(Admin admin);
	public Admin getUser(int id);
	
	public void postMessage();
	
	public void sentNotification();
}
