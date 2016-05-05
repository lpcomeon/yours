package edu.xidian.village.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.xidian.village.dao.AdminDao;
import edu.xidian.village.dao.WishDao;
import edu.xidian.village.service.WishService;
import edu.xidian.village.vo.Admin;
import edu.xidian.village.vo.Wish;
@Service
public class WishServiceImpl implements WishService {
	
	private WishDao wishDaoImpl;
	private AdminDao adminDaoImpl;
	@Override
	public void addWish(String content,int aid) {
		Wish wish = new Wish();
		wish.setContent(content);
		wish.setAdmin(adminDaoImpl.get(Admin.class, aid));
		System.out.println("ok");
		try {
			wishDaoImpl.addWish(wish);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage()+e.getStackTrace());
		}
	}
	
	@Override
	public List<Wish> findAllWish(int aid) {
		return wishDaoImpl.findAllWish(aid);
	}
	public WishDao getWishDaoImpl() {
		return wishDaoImpl;
	}
	@Resource
	public void setWishDaoImpl(WishDao wishDaoImpl) {
		this.wishDaoImpl = wishDaoImpl;
	}
	public AdminDao getAdminDaoImpl() {
		return adminDaoImpl;
	}
	@Resource
	public void setAdminDaoImpl(AdminDao adminDaoImpl) {
		this.adminDaoImpl = adminDaoImpl;
	}
	
	
}
