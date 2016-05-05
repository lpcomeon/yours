package edu.xidian.village.interceptor;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import edu.xidian.village.vo.Admin;



@Component("adminLoginInterceptor")
public class AdminLoginInterceptor extends MethodFilterInterceptor{ 
	 
	private Logger log = Logger.getLogger(this.getClass());
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		Map session =ctx.getSession();
		Admin admin = (Admin) session.get("admin");
		if(null == admin)
		{
			log.debug("未通过登陆检查");
			log.info("admin拦截器");
			return Action.ERROR;
		} 
		else {
			log.debug("已通过登陆检查");
			return invocation.invoke();
		}
		
	}
}
