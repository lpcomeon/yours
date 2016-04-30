package edu.xidian.village.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.xidian.village.dao.AdminDao;
import edu.xidian.village.service.AdminService;
import edu.xidian.village.vo.Admin;
@Service
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDaoImpl;
	
	@Override
	public boolean login(Admin admin) {
		try {
			System.out.println(admin.getName());
			Admin ad =adminDaoImpl.getAdmin(admin.getName());
			if(ad.getPassword()==admin.getPassword()||ad.getPassword().equals(admin.getPassword()))
				return true;
		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
		}
		return false;
	}

	@Override
	public boolean logout() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkPassword(Admin admin) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Admin getAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	public void postMessage() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void sentNotification() {
		// TODO Auto-generated method stub
		
	}

	public AdminDao getAdminDaoImpl() {
		return adminDaoImpl;
	}
	@Resource
	public void setAdminDaoImpl(AdminDao adminDaoImpl) {
		this.adminDaoImpl = adminDaoImpl;
	}


	
	
	

}
