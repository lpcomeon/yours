package edu.xidian.village.service;


import edu.xidian.village.vo.Admin;

public interface AdminService {
	
	public boolean login(Admin admin);
	
	public boolean logout();

	public boolean checkPassword(Admin admin);
	
	public Admin getAdmin(Admin admin);
	
	
	public void postMessage();
	
	public void sentNotification();
}
