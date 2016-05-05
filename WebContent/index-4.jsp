<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"tml>
<html lang="en">
     <head>
     <title>Your Wishes</title>
     <meta charset="utf-8">
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="css/form.css">
     <script src="js/jquery.js"></script>
     <script src="js/forms.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/superfish.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
     <script>

     </script>
     <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie.css">

    <![endif]-->
     </head>
     <body  class="">
<!--==============================header=================================-->
 <s:include value="head.jsp"/>

<!--=======content================================-->

<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - June 24, 2013!</div>
  <div class="container_12 pp">
    <div class="grid_7">
      <h2>你的愿望</h2>
     <%--  <blockquote class="q1">
        <div class="fl">
        <img src="images/page1_img2.jpg" alt="" class="img_inner fleft"><div class="clear"></div><span>井小井</span></div>
        <div class="quote extra_wrapper">
          <p>瘦</p>
          	对，一定要瘦，腿要纤细，胸要变大。
        </div>
      </blockquote>
      <blockquote class="q2"><div class="fl">
        <img src="images/page1_img3.jpg" alt="" class="img_inner fleft"><div class="clear"></div><span>井小井</span></div>
        <div class="quote  extra_wrapper">
          <p>美</p>
          对，一定要美，美到没朋友，自己都爱死自己了。
        </div> --%>
         <c:forEach var="wish" items="${sessionScope.wishlist}">
      <blockquote>
        <img src="images/page1_img2.jpg" alt="" class="img_inner fleft">
        <div class="quote extra_wrapper">
          	${wish.content}
        </div>
      </blockquote>
      
      </c:forEach>
     <!--  </blockquote>
      <blockquote class="q3"><div class="fl">
        <img src="images/page5_img3.jpg" alt="" class="img_inner fleft"><div class="clear"></div><span>Sarah Jhons</span></div>
        <div class="quote  extra_wrapper">
          <p></p>
        </div>
      </blockquote> -->
      <div class="border"></div>
    </div>
    <div class="grid_5">
      <h2>添加愿望</h2>
      <form  action="<%=path%>/add" method="post">
      <%-- <div class="success_wrapper">
      <div class="success">Contact form submitted!<br>
      <strong>We will be in touch soon.</strong> </div></div>
      <fieldset> --%>
      <%-- <label class="name">
      <input type="text" value="Your Name:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
      <label class="email">
      <input type="text" value="E-mail:">
      <br class="clear">
      <span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label> --%>
      
      <textarea name="wish.content" cols="50" rows="10"></textarea>
      <%-- <br class="clear">
      <span class="error">*字数太少了.</span> <span class="empty">*不能为空.</span> </label>
      <div class="clear"></div> --%>
      <input type="submit" value="Submit" align="right"/>
      
      
      </form>
    </div>
  </div>
</div>
<!--==============================footer=================================-->

<s:include value="foot.jsp"></s:include>

</body>
</html>