package edu.xidian.village.action;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;

import edu.xidian.village.service.AdminService;
import edu.xidian.village.service.WishService;
import edu.xidian.village.vo.Admin;
import edu.xidian.village.vo.Wish;

@Controller
public class AdminAction extends SuperAction{

	private Admin admin;
	private Wish wish;

	private AdminService adminServiceImpl;
	private WishService  wishServiceImpl;
	
	public String login(){
		Admin ad = adminServiceImpl.login(admin);
		if (ad!=null) {
			session.put("admin", ad);
			return "redirectIndex";
		}
		
		return ERROR;
	}
	
	public String findAllWishs(){
		Admin ad = (Admin) session.get("admin");
		if (ad==null) {
			return ERROR;
		}
		session.put("wishlist", wishServiceImpl.findAllWish(ad.getId()));
		return SUCCESS;
	}
	
	public String add(){
		Admin ad = (Admin) session.get("admin");
		if (ad==null) {
			return ERROR;
		}
		System.out.println(ad.getId()+ad.getName());
		System.out.println(wish.getContent());
		wishServiceImpl.addWish(wish.getContent(), ad.getId());
		return findAllWishs();
	}

	public Admin getAdmin() {
		return admin;
	}



	public void setAdmin(Admin admin) {
		this.admin = admin;
	}



	public AdminService getAdminServiceImpl() {
		return adminServiceImpl;
	}

	@Resource
	public void setAdminServiceImpl(AdminService adminServiceImpl) {
		this.adminServiceImpl = adminServiceImpl;
	}

	public Wish getWish() {
		return wish;
	}

	public void setWish(Wish wish) {
		this.wish = wish;
	}

	public WishService getWishServiceImpl() {
		return wishServiceImpl;
	}
	@Resource
	public void setWishServiceImpl(WishService wishServiceImpl) {
		this.wishServiceImpl = wishServiceImpl;
	}

}
