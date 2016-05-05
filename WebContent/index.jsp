<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"
<html lang="en">
     <head>
     <title>Home</title>
     <meta charset="utf-8">
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/style.css">
     <link rel="stylesheet" href="css/slider.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/superfish.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
     <script src="js/tms-0.4.1.js"></script>
     <script>
      $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:800,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:8000,
              numStatus:false,
              banners:false,
          waitBannerAnimation:false,
        progressBar:false
      })  
      });
     </script>
     
     </head>
     <body  class="page1">
<!--==============================header=================================-->
<s:include value="head.jsp"/>
<div class="top_block">
 <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="images/slide.jpg" alt=""></li>
          <li><img src="images/slide1.jpg" alt=""></li>
          <li><img src="images/slide2.jpg" alt=""></li>
          <li><img src="images/slide3.jpg" alt=""></li>
        </ul>
      </div>
    </div>
  </div>
 </div>
<!--=======content================================-->

<div class="content page1"><div class="ic">More Website Templates @ TemplateMonster.com - June 24, 2013!</div>
  <div class="container_12">
    <div class="grid_10">
      <h2>Welcome to Our Home</h2>
      <img src="images/page1_img1.jpg" alt="" class="img_inner fleft">
      <div class="extra_wrapper style1">
         
         <p>在这里，我讲会记录我们的过去，现在，未来。我们开心与不开心，我们的欢乐与悲伤，一切关于我们的事情，都将写到这里。你记性不好，忘记什么了，就来找这里看看，想起什么了，就来这里逛逛，我们的故事，一直未完待续。。。。。。</p>
         <a href="#" class="btn">More</a>
      </div>
    </div>
    <div class="grid_12">
      <div class="banners">
        <div class="maxheight"><h2>成都</h2>
          <p><a href="#">初次相遇，请多多包涵</a></p>
            <p>一次说走就走的旅行，一段说开始就开始的爱情。惊奇的是这两件事情同时在我身上发生了！而我觉得世间最幸福最浪漫的事就是和自己所爱的人开始一段说走就走的旅行。若有机会，还愿同你前去。因为成都，有我吻你的味道。</p>
        </div>
        <div class="maxheight"><h2>凤凰</h2>
          <p><a href="#">天赐良机，怎能不珍惜</a></p>
            <p>为了你，这座古城等待了千年！未曾想过，有一座小城会让我如此魂牵梦绕,因为同你前往。在凤凰有个不成文的定律，那就是三天定律，只要你静下心呆过三天后，你就不想走了。凤凰是一个不思未来，不念过去的地方，我们就在这里，就在这个时候，相爱吧！</p>
        </div>
        <div class="maxheight"><h2>北京</h2>
          <p><a href="#">在我眼里，你就是世界</a></p>
         <p>如果你不出去走走，你就会以为这就是世界。帝都，这个从小想起都会激动的城市，我们来了。去感受，去聆听，去洗礼。这里有宏伟，有威严，有气势，有美，当然还有你，我最爱的人。我愿陪你实现你和我的梦想，来吧，来吧，我们出发了。</p>
        </div>
      </div>
    </div>
    <div class="clear"></div>
    <div class="grid_5">
      <h2>你的愿望</h2>
      <c:forEach var="wish" items="${sessionScope.wishlist}">
      <blockquote>
        <img src="images/page1_img2.jpg" alt="" class="img_inner fleft">
        <div class="quote extra_wrapper">
          	${wish.content}
        </div>
      </blockquote>
      
      </c:forEach>
     <!--  <blockquote>
        <img src="images/page1_img3.jpg" alt="" class="img_inner fleft">
        <div class="quote extra_wrapper">
          <div class="col1">美
           
          </div>
         	对，一定要美，美到没朋友，自己都爱死自己了。
        </div>
      </blockquote> -->
      <a href="#" class="btn b2">More</a>
    </div>
    <div class="grid_6 prefix_1">
      <h2>我们爱的故事</h2>
      <img src="images/page1_img4.jpg" alt="" class="img_inner fleft fl1">
      <div class="extra_wrapper">
        <p class="col1"><a href="#">
       一路走来，点点滴滴都是爱，都是幸福。
      </div>
      <div class="clear"></div>
      曾不敢想象，你能来到我身边，多么遥不可及的事情，我是有多么的幸运，感谢你一路陪着我，走过一段又一段艰辛的历程。今天看唯爱，突然发现我们在一起1242天，真的好快，真挺不容易，上面有无数我们的心声，突然以前的经历历历在目，记录也想是最好的回忆，忘记了，就去看看，还是那么的温馨，那么的幸福。三年半，我们都长大了，也不是以前小孩子气，我们的肩上承担着责任，承担着压力，也同样承载着幸福。我愿通过这几个月的努力，让你重新认识我，我要变成一个让你值得托付，值得信任，值得拥有的男人，给你希望，给你未来，给你幸福。我愿在这里等你，我最爱的你 <br>
      <a href="#" class="btn b1">More</a>
    </div>
  </div>
</div>
<!--==============================footer=================================-->
<s:include value="foot.jsp" />
	<%-- <tiles:insertAttribute name="foot"/> --%>

</body>
</html>