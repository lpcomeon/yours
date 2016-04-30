package edu.xidian.village.action;






import javax.annotation.Resource;





import org.springframework.stereotype.Controller;

import edu.xidian.village.service.AdminService;
import edu.xidian.village.vo.Admin;

@Controller
public class AdminAction extends SuperAction{

	private Admin admin;
	

	private AdminService adminServiceImpl;

	public String login(){
		System.out.println(admin.getName());
		System.out.println(admin.getPassword());
		if (adminServiceImpl.login(admin)) {
			return SUCCESS;
		}
		
		return ERROR;
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

}
