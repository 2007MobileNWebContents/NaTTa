<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>NATTA!</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">
<link href="resources/images/tugcat.png" rel="shortcut icon">
<script type="text/javascript"
   src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<!--   <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
<!--   Template Main CSS File -->
<link href="resources/assets/css/style.css" rel="stylesheet"> 
<style>
header {height: 215px;}
#header {height: 175px;}
.artistPriceTable th {border-bottom: 0.01px solid dimgrey;width: 800px;padding: 10px;}
.artistPriceTable td {padding: 20px;width: 800px;}
.artistPriceTable {border-spacing: 10px;border-top: 0.6px solid #cda45e;border-bottom: 0.6px solid #cda45e;text-align: center;}
.artistPriceTable td:hover {color: #cda45e;}
.testimonials .testimonial-item {box-sizing: content-box; min-height: 245px;}
#pageArea { font-size: 30px; }
.pageColor:hover { color : red; }
.tattolayer > input {width:500px; vertical-align:middle;}
.FFFabout {
  background: url("resources/assets/img/nattaBack/a16.png") center center;
  background-size: cover;
  position: relative;
  padding: 80px 0;
}
 .FFFabout:before {
  content: "";
  background: rgba(0, 0, 0, 0.8);
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
} 
@media (min-width: 1024px) {
  .FFFabout {
    background-attachment: fixed;
  }
}
.FFabout {
  background: url("resources/assets/img/nattaBack/background1.jpg") center center;
  background-size: cover;
  position: relative;
  padding: 80px 0;
}
.FFabout .about-img {
  position: relative;
  transition: .5s;
}
.FFabout .about-img img {
  max-width: 100%;
  border: 4px solid rgba(255, 255, 255, 0.2);
  position: relative;
}
.FFabout .about-img::before {
  position: absolute;
  left: 20px;
  top: 20px;
  width: 60px;
  height: 60px;
  z-index: 1;
  content: '';
  border-left: 5px solid #cda45e;
  border-top: 5px solid #cda45e;
  transition: .5s;
}
.FFabout .about-img::after {
  position: absolute;
  right: 20px;
  bottom: 20px;
  width: 60px;
  height: 60px;
  z-index: 2;
  content: '';
  border-right: 5px solid #cda45e;
  border-bottom: 5px solid #cda45e;
  transition: .5s;
}
.FFabout .about-img:hover {
  transform: scale(1.03);
}
.FFabout .about-img:hover::before {
  left: 10px;
  top: 10px;
}
.FFabout .about-img:hover::after {
  right: 10px;
  bottom: 10px;
}
.FFabout .content h3 {
  font-weight: 600;
  font-size: 26px;
}
.FFabout .content ul {
  list-style: none;
  padding: 0;
}
.FFabout .content ul li {
  padding-bottom: 10px;
}

.FFabout .content ul i {
  font-size: 20px;
  padding-right: 4px;
  color: #cda45e;
}
.FFabout .content p:last-child {
  margin-bottom: 0;
}

@media (min-width: 1024px) {
  .FFabout {
    background-attachment: fixed;
  }
}

.events {
  background: url("resources/assets/img/nattaBack/b3.jpg") center center no-repeat;
  background-size: cover;
  position: relative;
}
@media (min-width: 1024px) {
  .events {
    background-attachment: fixed;
  }
}
#workPaging {font-size: 25px; text-align:center;}
.workhover { color : white; }
.workhover:hover { color : #cda45e; }
.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px; color:black; font-family: 'Malgun Gothic', dotum, '??????', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
.info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
.info .close:hover {cursor: pointer;}
.info .body {position: relative;overflow: hidden;}
.info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
.desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
.desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.info .link {color: #5085BB;}
</style>
</head>
<body>
  <header>
      <div id="header" class="fixed-top">
         <!-- ======= Top Bar ======= topBar ?????? header?????? fixed???????????? ?????? ?????? 12.10 0141AM-->
         <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex">
               <div class="contact-info mr-auto">
                  <i class="icofont-phone"></i> ${ artist.phone }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <span class="d-none d-lg-inline-block"><i
                     class="icofont-clock-time icofont-rotate-180"></i> Mon-Sat: 11:00
                     AM - 23:00 PM</span>
               </div>
               <div class="languages">
                  <ul>
                     <!--????????? ?????? ???????????? ??? -->
                     <c:if test="${empty sessionScope.loginCustomer && empty sessionScope.loginArtist  }">
                        <li><a href="/login.na">LOGIN</a></li>
                        <li><a href="/customerJoinView.na">SIGNUP</a></li>
                     </c:if>
                     <!-- ?????? ???????????? -->
                     <c:if test="${!empty sessionScope.loginCustomer }">
                        <li>${loginCustomer.customerName }??????????????????.</li>
                        <li><a href="/customerInfo.na?customerId=${loginCustomer.customerId }">MyPage&nbsp;&nbsp;</a></li>
                        <li><a href="/customerLogout.na">LogOut</a></li>
                     </c:if>
                     <!-- ???????????? ???????????? -->
                     <c:if test="${!empty sessionScope.loginArtist }">
                        <c:url var="artistInfoPage" value="artistInfoPage.na">
                           <c:param name="artistId" value="${ loginArtist.artistId }" />
                        </c:url>
                        <li>${loginArtist.artistName }??????????????????.</li>
                        <li><a href="${ artistInfoPage }">ArtistMyPage&nbsp;&nbsp;</a></li>
                        <li><a href="artistLogout.na">LogOut</a></li>
                     </c:if>
                  </ul>
               </div>
            </div>
         </div>

         <!-- ======= Header ======= -->
         <div class="container d-flex align-items-center">
            <h1 class="logo mr-auto">
               <a href="main.na">NATTA!</a>
            </h1>
            <nav class="nav-menu d-none d-lg-block">
               <ul>
                  <li class="active"><a href="main.na">Home</a></li>
                  <li></li>
                  <li></li>
                  <li><a href="artistList.na">ArtistList</a></li>
                  <li></li>
                  <li></li>
                  <li><a href="customDesignList.na" style="text-align: center">Customized<br>Tattoo</a></li>
                  <li></li>
                  <li></li>
                  <li><a href="notice.na">NOTICE</a></li>
                  <li></li>
                  <li></li>
                  <li><a href="/qna.na">Q&A</a></li>
               </ul>
            </nav>
            <!-- .nav-menu -->
         </div>
         <!-- ???????????? ????????? ??????! -->
         <div class="profile container d-flex align-items-center"
            style="margin-top: 10px;">
            
            <c:if test="${ empty artistInfo }">
               <img src="resources/artistInfoFile/Profile/NATTAprofile.png" class="img-fluid rounded-circle"
                  style="margin-left: 15px auto; display: block; width: 100px; height: 100px; border: 8px solid #2c2f3f;">
               <nav class="nav-menu d-none d-lg-block" data-aos="fade-in">
                  <h4 class="text-light" style="margin-left: 25px;">????????? ????????? ????????????.</h4>
                  <button type="button" class="mobile-nav-toggle d-xl-none">
                     <i class="icofont-navigation-menu"></i>
                  </button>
                  <!-- ???????????? ????????? ????????? -->
                  <ul style="list-style: none;">
                     <c:if test="${ artistPageId eq loginArtist.artistId }">
                        <li class="active"><a href="javascript:void(0);"
                           data-toggle="modal" id="insertInfo"><i class="bx bx-home"></i><span>
                                 ????????? ??????</span></a></li>
                        <li><a href="javascript:void(0);" data-toggle="modal"
                           id="artistInfoWork"><i class="fas fa-pencil-alt"></i> ???
                              ??????????????????</a></li>
                        <li><a href="#modalArtistPrice" data-toggle="modal"
                           id="artistInfoPrice"><i class="fas fa-hand-holding-usd"></i><span>
                                 ???????????? ??????</span></a></li>
                     </c:if>
                     <c:if test="${!empty sessionScope.loginCustomer }">
                        <li><a href="reservation.na?artistId=${ artistInfo.artistId }">
                           <i class="icofont-calendar"></i> Reservation</a></li>
                     </c:if>
                     <li><a href="modifyArtistInfo.na?artistId=${loginArtist.artistId }"><i class="bx bx-user"></i>
                           ?????? ??????</a></li>
                     <li><a href="deleteArtist.na?artistId=${loginArtist.artistId }" onclick="return deleteArtist();"><i class="icofont-crying"></i>
                           ?????? ??????</a></li>
                  </ul>
               </nav>
               <!-- .nav-menu -->
            </c:if>
            
            <!-- ?????? ?????? ???????-->
            <script>
             function deleteArtist(){
               return confirm("?????? ?????????????"); 
            }
            </script>
            
            <c:if test="${ !empty artistInfo }">
               <img
                  src="resources/artistInfoFile/Profile/${ artistInfo.myReProfile }"
                  alt="" class="img-fluid rounded-circle"
                  style="margin-left: 15px auto; display: block; width: 100px; height: 100px; border: 8px solid #2c2f3f;">
               <nav class="nav-menu d-none d-lg-block" data-aos="fade-in">
                  <h4 class="text-light" style="margin-left: 25px;">${ artistInfo.name }</h4>
                  <button type="button" class="mobile-nav-toggle d-xl-none">
                     <i class="icofont-navigation-menu"></i>
                  </button>
                  <!-- ???????????? ????????? ????????? -->
                  <ul style="list-style: none;">
                     <c:if test="${ artistPageId eq loginArtist.artistId }">
                        <li class="active"><a href="javascript:void(0);"
                           data-toggle="modal" id="insertInfo"><i class="bx bx-home"></i><span>
                                 ????????? ??????</span></a></li>
                        <li><a href="javascript:void(0);" data-toggle="modal"
                           id="artistInfoWork"><i class="fas fa-pencil-alt"></i> ???
                              ??????????????????</a></li>
                        <li><a href="#modalArtistPrice" data-toggle="modal"
                           id="artistInfoPrice"><i class="fas fa-hand-holding-usd"></i><span>
                                 ???????????? ??????</span></a></li>
                        <li><a href="javascript:void(0);" id="rListModal"
                         data-toggle="modal"><i class="fas fa-bell"></i> <span>????????????</span></a></li>
                     <c:if test="${ artistPageId eq loginArtist.artistId }">
                        <li><a href="/chatting.na"><i class="bx bx-envelope"></i>
                              ??? ??????</a></li>
                     </c:if>
                     
                                              
                     <li><a href="modifyArtistInfo.na?artistId=${loginArtist.artistId }"><i class="bx bx-user"></i>
                           ?????? ??????</a></li>
                     <li><a href="deleteArtist.na?artistId=${loginArtist.artistId }" onclick="return deleteArtist();"><i class="icofont-crying"></i>
                           ?????? ??????</a></li>                                     
                     </c:if>
                     <c:if test="${!empty sessionScope.loginCustomer }">
                     <li>
                     <a href="reservation.na?artistId=${ artistInfo.artistId }"><i
                           class="icofont-calendar"></i> ????????????</a></li>
                     </c:if>
                     <c:if test="${ artistPageId ne loginArtist.artistId && !empty sessionScope.loginCustomer }">
                        <li><a href="/chatting.na?artistId=${artistPageId }"><i
                              class="bx bx-envelope"></i> ??????????????? ??????</a></li>
                     </c:if>
                     <!-- javascript:void(0); ??? ??? ?????? fas-->
                     <c:if test="${follow ne null && empty sessionScope.loginArtist }">
                        <li><a href="javascript:void(0);"
                           onclick="deleteFollowing();" id="clickChange"><i
                              class="fas fa-heart" id="followCheck"></i> ?????????</a></li>
                     </c:if>
                     <c:if test="${follow eq null && empty sessionScope.loginArtist }">
                        <li><a href="javascript:void(0);"
                           onclick="insertFollowing();" id="clickChange"><i
                              class="far fa-heart" id="followCheck"></i> ?????????</a></li>
                     </c:if>
                        <li><a href="#modalFollowList" data-toggle="modal"
                           onclick="" id=""><i class="fas fa-fire-alt"
                              id="followCheck"></i> ????????? ??????</a></li>
                  </ul>
               </nav>
               <!-- .nav-menu -->
            </c:if>
         </div>
      </div>
   </header>
   <!--=========== ?????? ???  ============-->
   <!--=============?????? ??????=============  -->

   <!--============ ???????????? ?????? ?????? ========== about -->
   <section id="about" class="FFabout">
      <div class="container" data-aos="fade-up">

         <div class="row">
            <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in"
               data-aos-delay="100">
               <div class="about-img">
                  <c:if test="${ artistInfo.myReProfile eq null }">
                     <img src="resources/artistInfoFile/Profile/NATTAprofile.png"
                        alt="" style="width: 540px; height: 403px;">
                  </c:if>
                  <c:if test="${ artistInfo.myReProfile ne null }">
                     <img
                        src="resources/artistInfoFile/Profile/${ artistInfo.myReProfile }"
                        alt="" style="width: 540px; height: 403px;">
                  </c:if>
               </div>
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
               <h3>Artist Self Introduction</h3>
               <p class="font-italic" style="color:orange;">ShopName :  ${ artistInfo.name }</p>
               <ul>
                  <li><i class="icofont-check-circled"></i> ??????????????? ????????? ??????, ?????????
                     ?????? ????????? ??????????????? !</li>
                  <li><i class="icofont-check-circled"></i> ???????????? ????????? ????????? ??????????????????
                     ??????????????? !</li>
                  <li><i class="icofont-check-circled"></i> ?????????????????? ????????? ?????????
                     ??????????????? !</li>
                  <li><i class="icofont-check-circled"></i> <font style="color:orange;">" ${ artistInfo.name } "</font> ?????? ?????? <br>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?????????  <span style="color:orange; font-size:17px;"><b>${ wCount }</b></span> ??? ???????????? ????????????. <br> 
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?????????  <span style="color:orange; font-size:17px;"><b>${ rCount }</b></span> ??? ???????????? ????????????. <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?????? ?????? ?????? <span style="color:orange; font-size:12px;"><i class='far fa-star fa' style="color:orange;"></i></span><b style="color:orange;"><c:if test="${ starAvg ne null}">  ${ starAvg }</c:if><c:if test="${ starAvg eq null}"> 0</c:if></b><br> 
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?????? <font style="color:orange; font-size:17px;"><b> ${ fCount } </b></font> ?????? ????????? ??????????????????.
                  </li>
               </ul>
               ??????????????? ??? ?????? ..<p style="color:orange;"> ${ artistInfo.myInfo }</p>
            </div>
         </div>
      </div>
   </section>
   <!--============ ???????????? ?????? ?????? ??? ==========  -->







   <!-- ======= ???????????? ?????? ?????? ======= fffffffff-->
   <section id="events" class="events"> <!-- events -->
      <div id="chefs" class="chefs">
         <div class="container" data-aos="fade-up">
            <div class="section-title">
               <h2>Work</h2>
               <p>???????????? ???????????????</p>
            </div>

            <div class="row">
               <c:if test="${ !empty workList }">
                  <c:forEach items="${ workList }" var="aWork">
                     <div class="col-lg-4 col-md-6">
                        <div class="member" data-aos="zoom-in" data-aos-delay="100">
                           <img
                              src="resources/artistInfoFile/WorkFile/${ aWork.workReImgPath }"
                              class="img-fluid" alt="???? ?????????????"
                              style="width: 400px; height: 350px;">
                           <div class="member-info">
                              <div class="member-info-content">
                                 <h6>${ aWork.workInfo }</h6>
                                 <span>${ aWork.workStyle }</span>
                              </div>
                              <div class="social">
                                 <c:url var="workReservation" value="reservation.na">
                                    <c:param name="artistId" value="${aWork.artistId }"></c:param>
                                    <c:param name="img" value="${aWork.workReImgPath }"></c:param>
                                 </c:url>
                                 <c:if test="${!empty loginCustomer }">
                                 <a href="${workReservation }" onclick="return confirm('???????????????????????? ?')"><i
                                    class="icofont-basket"></i></a> 
                                    </c:if>
                                    <a href="resources/artistInfoFile/WorkFile/${ aWork.workReImgPath }" class="venobox" data-gall="gallery-item">
                                    <i class="icofont-camera"></i></a>

                                 <c:url var="workDelete" value="deleteArtistWork.na">
                                    <c:param name="workCode" value="${ aWork.workCode }" />
                                    <c:param name="workImgPath" value="${ aWork.workImgPath }" />
                                    <c:param name="workReImgPath"
                                       value="${ aWork.workReImgPath }" />
                                    <c:param name="artistId" value="${ aWork.artistId }" />
                                 </c:url>

                                 <c:if test="${ artistPageId eq loginArtist.artistId }">
                                    <a href="#" data-toggle="modal"><i
                                       class="icofont-spanner updateWork" id="${ aWork.workCode }"></i></a>
                                    <a href="${ workDelete }"
                                       onclick="return confirm('????????? ????????? ???????????????????????? ?');"><i
                                       class="icofont-bin"></i></a>
                                 </c:if>
                              </div>
                           </div>
                        </div>
                     </div>
                  </c:forEach>
               </c:if>
               <c:if test="${ empty workList  }">
                  <h3>????????? ????????? ????????????.</h3>
               </c:if>
            </div>
            <br><br>
            <div id="workPaging" data-aos="fade-up">
               <!-- ?????? --> 
               <c:if test="${pi.currentPage <= 1 }">
                  < &nbsp;
               </c:if> 
               <c:if test="${pi.currentPage >1 }">
                  <c:url var="before" value="artistInfoPage.na">
                	 <c:param name="artistId" value="${ artistInfo.artistId }"/>
                     <c:param name="page" value="${pi.currentPage -1 }"/>
                  </c:url>
                  <a class="workhover" href="${before }"> < &nbsp; </a>
                  </c:if>
                   <!-- ????????? --> 
                  <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                     <c:url var="pagination" value="artistInfoPage.na">
                        <c:param name="artistId" value="${ artistInfo.artistId }"/>
                        <c:param name="page" value="${p }"/>
                     </c:url>
                     <c:if test="${p eq pi.currentPage }">
                        <font color="#cda45e" style="text-decoration:underline;">${ p }</font><!-- ddddddddddddd -->
                     </c:if>
                     <c:if test="${p ne pi.currentPage }">
                        <a class="workhover" href="${ pagination }">${ p }</a>
                     </c:if>
                  </c:forEach> 
                  <!-- ?????? --> 
                  <c:if test="${pi.currentPage >= pi.maxPage }">
                     &nbsp; > 
                  </c:if>
                   <c:if test="${pi.currentPage < pi.maxPage }">
                     <c:url var="after" value="artistInfoPage.na">
                        <c:param name="artistId" value="${ artistInfo.artistId }"/>
                        <c:param name="page" value="${pi.currentPage + 1 }"/>
                     </c:url>
                     <a class="workhover" href="${after }"> &nbsp; > </a>&nbsp;
                   </c:if>
            </div>
         </div>
      </div>
   </section>
   <!-- ======= ???????????? ?????? ?????? ??? ======= -->
   <!-- ?????? ??? -->
   <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">
         <div class="section-title">
            <h2>Price</h2>
            <p>?????? ??????</p>
         </div>
         <div class="artistPriceTable">
            <table style="width:1100px;">
               <thead>
                  <tr>
                     <th>Style</th>
                     <th>38 x 38</th>
                     <th>38 x 64</th>
                     <th>65 x 76</th>
                     <th>102 x 127 (A6)</th>
                     <th>152 x 152</th>
                     <th>203 x 152 (A5)</th>
                     <th>210 x 297 (A4)</th>
                     <th rowspan="4" style="width:20px;">mm/???</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach items="${ priceList }" var="pList">
                     <tr>
                        <td>${ pList.pStyle }</td>
                        <td><fmt:formatNumber value="${ pList.pSize1 }" /></td>
                        <td><fmt:formatNumber value="${ pList.pSize2 }" /></td>
                        <td><fmt:formatNumber value="${ pList.pSize3 }" /></td>
                        <td><fmt:formatNumber value="${ pList.pSize4 }" /></td>
                        <td><fmt:formatNumber value="${ pList.pSize5 }" /></td>
                        <td><fmt:formatNumber value="${ pList.pSize6 }" /></td>
                        <td><fmt:formatNumber value="${ pList.pSize7 }" /></td>
                     </tr>
                  </c:forEach>
               </tbody>
            </table>
         </div>
      </div>
   </section>














   <!-- ======= ?????? ?????? ======= -->
   <section id="testimonials" class="FFFabout testimonials section-bg" id="focusArea">
      <div class="container" data-aos="fade-up">
         <div class="section-title" id="nextReview">
            <h2>??? ???</h2>
            <p>${ artistInfo.name } ?????? ?????? ??????</p>
         </div>
      </div>
       <!-- ????????? ?????? -->
         <div id="pageArea" data-aos="fade-up" style="text-align: center;"></div>                    
   </section>
   
   <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">
         <div class="section-title">
            <h2>${ artistinfo.name }</h2>
            <p>${ artistInfo.name } ?????? </p>
         </div>
         <div id="map" class="info" style="width:1200px; height: 607px;"></div>
      </div>
      <c:forTokens items="${artist.workAddress }" var="addr" delims=","
         varStatus="status">
         <c:if test="${status.index eq 1 }">
            <input type="hidden" id="address" name="address"
               placeholder="??????" value="${addr}">
         </c:if>
      </c:forTokens>
   </section>
   
   
   <!-- Vendor JS Files -->
   <script src="resources/assets/vendor/jquery/jquery.min.js"></script>
   <script
      src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script
      src="resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
   <script src="resources/assets/vendor/php-email-form/validate.js"></script>
   <script src="resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
   <script
      src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
   <script src="resources/assets/vendor/venobox/venobox.min.js"></script>
   <script src="resources/assets/vendor/aos/aos.js"></script>
   <!-- Template Main JS File -->
   <script src="resources/assets/js/main.js"></script>
   <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8e5007416460a5bee56aaba2bb1ea6d&libraries=services"></script>
      <script>
      // ??????
      var workAddress = document.getElementById('address').value;
      var mapContainer = document.getElementById('map'), // ????????? ????????? div 
       mapOption = {
           center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
           level: 3 // ????????? ?????? ??????
          };  
      // ????????? ???????????????    
      var map = new kakao.maps.Map(mapContainer, mapOption); 
      // ??????-?????? ?????? ????????? ???????????????
      var geocoder = new kakao.maps.services.Geocoder();
      // ????????? ????????? ???????????????
      geocoder.addressSearch(workAddress, function(result, status) {
          // ??????????????? ????????? ??????????????? 
           if (status === kakao.maps.services.Status.OK) {
              var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
              // ??????????????? ?????? ????????? ????????? ???????????????
              var marker = new kakao.maps.Marker({
                  map: map,
                  position: coords
              });
           // ????????? ??????????????? ????????? ????????? ?????????
             // ????????? ??????????????? ????????? ?????? ???????????? ???????????? ???????????? ???????????? ???????????? ????????? ??? ?????? ?????????
             // ????????? ????????? ???????????? ???????????? ???????????? 
              var    content='<div class="wrap">' + 
                          '    <div class="info">' + 
                          '        <div class="title">' + 
                          '            ????????? : ${artistInfo.name}' + 
                          '            <div class="close" onclick="closeOverlay()" title="??????"></div>' + 
                          '        </div>' + 
                          '        <div class="body">' + 
                          '            <div class="img">' +
                          '                <img src="resources/artistInfoFile/Profile/${ artistInfo.myReProfile }" width="73" height="70">' +
                          '           </div>' + 
                          '            <div class="desc">' + 
                          '                <div class="ellipsis">'+workAddress+'</div>' + 
                          '            </div>' + 
                          '        </div>' + 
                          '    </div>' +    
                          '</div>';
              // ?????? ?????? ???????????????????????? ???????????????
              // ????????? ???????????? ????????? ??????????????? ?????????????????? CSS??? ????????? ????????? ??????????????????
              var overlay = new kakao.maps.CustomOverlay({
                  content: content,
                  map: map,
                  position: marker.getPosition()       
              });
               // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
              map.setCenter(coords);
         
              // ????????? ???????????? ??? ????????? ??????????????? ???????????????
              kakao.maps.event.addListener(marker, 'click', function() {
                  overlay.setMap(map);
              });
           // ????????? ??????????????? ?????? ?????? ???????????? ??????????????? 
              function closeOverlay() {
                  overlay.setMap(null);     
              }
         }
      });
   </script>


   <!-- ???????????? ?????? ????????????  -->
   <div class="modal fade" id="modalUpdateWork" tabindex="-1"
      role="dialog" aria-labelledby="ARTIST_TITLE" aria-hidden="true"
      style="">
      <div
         class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl"
         role="document">
         <!-- ??????????????? ??????  modal-dialog-centered -->
         <div class="modal-content"
            style="background-color: rgba(255, 255, 255, 0.4);">
            <div class="modal-header">
               <h5 class="modal-title" id="TEST">
                  <b>??? ?????? ????????????</b>
               </h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body book-a-table">
               <form action="updateArtistWork.na" method="post" role="form"
                  class="php-email-form workForm" data-aos="fade-up"
                  data-aos-delay="100" enctype="multipart/form-data"
                  onsubmit="return updateCheck();">
                  <div>
                     <!-- ?????? ????????????-->
                     <div class="col-lg-4 col-md-6 form-group">
                        ???????????? <input type="text" class="form-control workImgPath"
                           name="workImgPath" readonly> ???????????? ?????? <input type="file"
                           class="form-control" name="reloadFile">
                     </div>

                     <!-- ?????? ????????? -->
                     <div class="col-lg-4 col-md-6 form-group">
                        Update Tatto Style <select name="workStyle"
                           class="form-control updateStyle" id="name">
                           <option value="pleaseSelect" id="selectOption" selected>??????
                              ???????????????</option>
                        </select>
                        <div class="validate"></div>
                     </div>

                     <!-- ????????????  -->
                     <div class="form-group">
                        ?????? ??????
                        <textarea class="form-control updateWorkArea" name="workInfo"
                           cols="600" rows="5" placeholder="?????? ??????" style="resize: none;"></textarea>
                        <div class="validate"></div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <div class="loading">Loading</div>
                  </div>
                  <div class="text-center">
                     <button type="submit">Work Update</button>
                  </div>
                  <input type="hidden" name="artistId"
                     value="${ loginArtist.artistId }"> <input type="hidden"
                     id="workReImgPath" name="workReImgPath" value=""> <input
                     type="hidden" id="artistWorkCode" name="workCode" value="">
               </form>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">CLOSE</button>
            </div>
         </div>
      </div>
   </div>







   <!-- ???????????? ??????????????? ??????  -->
   <div class="modal fade" id="modalInfo" tabindex="-1" role="dialog"
      aria-labelledby="ARTIST_TITLE" aria-hidden="true">
      <div
         class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl"
         role="document">
         <!-- ??????????????? ??????  modal-dialog-centered -->
         <div class="modal-content"
            style="background-color: rgba(255, 255, 255, 0.4);">
            <div class="modal-header">
               <h5 class="modal-title" id="TEST">
                  <b>???????????? ??? ??????</b>
               </h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body book-a-table">
               <form action="InsertArtistInfo.na" method="post" role="form"
                  class="php-email-form modalActionCheck" data-aos="fade-up"
                  data-aos-delay="100" enctype="multipart/form-data">
                  <div>
                     <!-- ??????????????? -->
                     <div class="col-lg-4 col-md-6 form-group">
                        ???????????? ??? ?????? <input type="text" value="" name="name"
                           class="form-control artistShopName" id="name"
                           placeholder="Your Name" data-rule="minlen:4"
                           data-msg="1?????? ?????? ??????????????????.">
                        <div class="validate"></div>
                     </div>
                     <!-- ??????????????? ?????????-->
                     <div class="col-lg-4 col-md-6 form-group">
                        <c:if test="${ empty artistInfo.myProfile }">
                                         ????????? ?????? ?????? 
                          <input type="file"
                              class="form-control artistmodalProfileName changeProfile" name="reloadFile">
                        </c:if>
                        <c:if test="${ !empty artistInfo.myProfile }">
                             ?????? ??????<input type="text" class="form-control"
                              id="InfoProfile" name="myProfile" value="" readonly>
                             ????????? ??????<input type="file"
                              class="form-control artistmodalProfileName changeProfile" name="uploadFile">
                        </c:if>
                         <div style="display:inline-block;">
                           <img src="" id="modifyPhoto" style="width : 330px; height: 200px; color:red;" alt="????????? ???????????? ????????????.">
                        </div>   
                     </div>

                     <!-- ????????????  -->
                     <div class="form-group">
                        INFO
                        <textarea class="form-control artistmodalInfo" name="myInfo"
                           cols="600" rows="5" placeholder="Your Info"
                           style="resize: none;"></textarea>
                        <div class="validate"></div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <div class="loading">Loading</div>
                  </div>
                  <div class="text-center">
                     <button type="submit" class="artistInfoButton"></button>
                  </div>
                  <!-- ?????????????????? ???????????????????????? ??? ?????? ??????????????? hidden?????? ?????????  -->
                  <input type="hidden" name="artistId"
                     value="${ loginArtist.artistId }"> <input type="hidden"
                     id="InfoReProfile" name="myReProfile" value="">
               </form>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">CLOSE</button>
            </div>
         </div>
      </div>
   </div>
   <!-- <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      </div> ???-->



   <!-- ???????????? ?????? ?????? -->
   <div class="modal fade" id="modalArtistWork" tabindex="-1"
      role="dialog" aria-labelledby="ARTIST_TITLE" aria-hidden="true">
      <div
         class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg"
         role="document">
         <!-- ??????????????? ??????  modal-dialog-centered -->
         <div class="modal-content"
            style="background-color: rgba(255, 255, 255, 0.4);">
            <div class="modal-header">
               <h5 class="modal-title" id="TEST">
                  <b>??? ?????? ????????????</b>
               </h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body book-a-table">
               <form action="InsertArtistWork.na" method="post" role="form"
                  class="php-email-form workForm" data-aos="fade-up"
                  data-aos-delay="100" enctype="multipart/form-data"
                  onsubmit="return optionCheck();">
                  <div>
                     <!-- ?????? ????????????-->
                     <div class="col-lg-4 col-md-6 form-group">
                        ???????????? <input type="file" class="form-control fileCheck changeWork"
                           name="uploadFile">
                     </div>
                     <!-- ?????? ????????? -->
                     <div class="col-lg-4 col-md-6 form-group">
                        ?????? ????????? <select name="workStyle" class="form-control workStyle" id="name">
                           <option value="pleaseSelect" id="optionKing" selected>?????????
                              ???????????????</option>
                        </select>
                        <img src="" id="modifyPhoto2" style="width : 330px; height: 200px; color:red;" alt="????????? ???????????? ????????????.">
                        <div class="validate"></div>
                     </div>
                     
                     <!-- ????????????  -->
                     <div class="form-group">
                        ????????????
                        <textarea class="form-control" name="workInfo" cols="600"
                           rows="5" placeholder="Your Info" style="resize: none;"></textarea>
                        <div class="validate"></div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <div class="loading">Loading</div>
                  </div>
                  <div class="text-center">
                     <button type="submit">Work Insert</button>
                  </div>
                  <input type="hidden" name="artistId"
                     value="${ loginArtist.artistId }">
               </form>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">CLOSE</button>
            </div>
         </div>
      </div>
   </div>


   
   <div class="modal fade" id="modalFollowList" tabindex="-1"
      role="dialog" aria-labelledby="ARTIST_TITLE" aria-hidden="true">
      <div
         class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg"
         role="document">
         <!-- ??????????????? ??????  modal-dialog-centered -->
         <div class="modal-content"
            style="background-color: rgba(255, 255, 255, 0.4);">
            <div class="modal-header">
               <h5 class="modal-title" id="TEST">
                  <b>${ artistInfo.name }?????? ????????? ??? ??????</b>
               </h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body book-a-table">
               <c:forEach items="${ followList }" var="fList">
                  <div class="profile container d-flex align-items-center"
                     id="${ fList.customerId }" style="margin-top: 10px; width: 100%;">
                     <c:if test="${ fList.customerProfile eq null }">
                        <img src="resources/artistInfoFile/Profile/NATTAprofile.png"
                           alt="" class="img-fluid rounded-circle"
                           style="margin-left: 15px auto; display: block; width: 80px; height: 80px; border: 8px solid #2c2f3f;">
                        <nav class="nav-menu d-none d-lg-block" data-aos="fade-in"
                           style="width: 80%">
                           <h3 style="float: left; margin-left: 25px;">${ fList.customerId }
                           </h3>
                        </nav>
                        <c:if test="${ artistInfo.artistId eq loginArtist.artistId }">
                           <div style="width: 20%; float: left;">
                              <button type="button" class="close followDelete"
                                 value="${ fList.customerId }" aria-label="Close">
                                 <i class="fas fa-user-minus" style="color: black;"></i>
                              </button>
                           </div>
                        </c:if>
                     </c:if>
                     <c:if test="${ fList.customerProfile ne null }">
                        <img
                           src="resources/customerProfile/${ fList.customerId }/${ fList.customerProfile }"
                           class="img-fluid rounded-circle"
                           style="margin-left: 15px auto; width: 80px; height: 80px; border: 3px solid #2c2f3f;">
                        <nav class="nav-menu d-none d-lg-block" data-aos="fade-in"
                           style="width: 80%">
                           <h3 style="float: left; margin-left: 25px;">${ fList.customerId }
                           </h3>
                        </nav>
                        <c:if test="${ artistInfo.artistId eq loginArtist.artistId }">
                           <div style="width: 20%; float: left;">
                              <button type="button" class="close followDelete" value="${ fList.customerId }" aria-label="Close">
                                 <i class="fas fa-user-minus" style="color: black;"></i>
                              </button>
                              <!-- gggggggg -->
                           </div>
                        </c:if>
                     </c:if>               
                  </div>
                  <br>
               </c:forEach>
            </div>
         </div>
      </div>
   </div>
   <script>
         $(".followDelete").on("click", function(){
            var customerId = $(this).val();
            var artistId = "${ loginArtist.artistId }";
            $.ajax({
               url : "deleteFollowing.na",
               type : "post",
               data : { 
                  "artistId" : artistId,
                  "customerId" : customerId 
                  },
               success : function(data) {               
                  if( data == "fail" ) {
                     alert("??????");         
                  } else {
                     alert("???????????? ?????????????????????.");
                     $("#"+data).remove();
                  }
               }
            });
         });
      </script>
   <script>
      function optionCheck(){
          var fileCheck = $(".fileCheck").val();
         var styleCheck = $(".workStyle").val();
         if( styleCheck == "pleaseSelect" || !fileCheck ){
            alert("????????? ?????? ??? ???????????? ??????????????????.");
            return false;
         }
         return true;
      }      
        function updateCheck(){
         var styleCheck = $(".updateStyle").val();
         if( styleCheck == "pleaseSelect" ){
            alert(" ???????????? ??????????????????.");
            return false;
         }
         return true;
      } 
      
      $(document).ready(function(){
             $("#artistInfoWork").on("click", function(){
                $("option").remove(".styleDelete");
                var artistId = "${ loginArtist.artistId }";
                $.ajax({
                   url : "artistStyle.na",
                   type : "post",
                   data : { "artistId" : artistId },
                   dataType : "json",
                   success : function(style) {
                      console.log(style);
                         if( style.length > 0 ){
                         for( var i in style ) {
                            var aStyle = decodeURIComponent(style[i].pStyle.replace(/\+/g," "));
                            var aOption = $("<option class='styleDelete' value='"+ aStyle +"'>"+ aStyle + "</option>");
                            /* $("#optionKing").after("<option class='styleDelete' value='"+ aStyle + "'>" + aStyle + "</option>"); */
                            $("#optionKing").after(aOption);
                            $("#modalArtistWork").modal();
                         }
                         } else {
                            alert("???????????? ????????? ?????? ?????????????????? ! ");
                         }
                         } 
                });
             });
             
          
          $(".tattoStyle").on("change", function() {
            var artistId = "${ loginArtist.artistId }";
            console.log(artistId);
            var tattoStyleOptionValue = $(this).find(":selected").val();
            if( tattoStyleOptionValue == 'pleaseSelect' ) {
               $('.tattolayer').css("display","none");
            }else{
               $('.tattolayer').css("display","block");
                  $.ajax({
                     url : "artistPriceChecking.na",
                     type : "post",
                     data : { 
                        "artistId" : artistId,
                        "pStyle" : tattoStyleOptionValue 
                        },
                     dataType : "json",
                     success : function(checkPrice) {
                        if( checkPrice != null ){
                           $("input[name=pSize1]").prop("value", checkPrice.pSize1);
                           $("input[name=pSize2]").prop("value", checkPrice.pSize2);
                           $("input[name=pSize3]").prop("value", checkPrice.pSize3);
                           $("input[name=pSize4]").prop("value", checkPrice.pSize4);
                           $("input[name=pSize5]").prop("value", checkPrice.pSize5);
                           $("input[name=pSize6]").prop("value", checkPrice.pSize6);
                           $("input[name=pSize7]").prop("value", checkPrice.pSize7);
                           $(".priceActionCheck").prop("action", "updateArtistPrice.na");
                           $(".artistPriceButton").html("Tatto Price Update");
                        } else {
                           alert("????????? ????????? ????????????.");
                           $("input[name=pSize1]").prop("value", "");
                           $("input[name=pSize2]").prop("value", "");
                           $("input[name=pSize3]").prop("value", "");
                           $("input[name=pSize4]").prop("value", "");
                           $("input[name=pSize5]").prop("value", "");
                           $("input[name=pSize6]").prop("value", "");
                           $("input[name=pSize7]").prop("value", "");                           
                           $(".priceActionCheck").prop("action", "insertArtistPrice.na");
                           $(".artistPriceButton").html("Tatto Price Insert");
                        }
                     }
                  });
               }
            });
         
            /* ddddddddd */
         $("#insertInfo").on("click", function(){
            var artistId = "${ loginArtist.artistId }";
            var path = "resources/artistInfoFile/Profile/${ artistInfo.myReProfile }";
            $.ajax({
               url : "artistChecking.na",
               type : "post",
               data :{ "artistId" : artistId },
               dataType : "json",
               success : function(check) {
                  console.log(check)
                     if( check != null ){
                        $(".artistShopName").prop("value", decodeURIComponent(check.name.replace(/\+/g," ")));
                        $(".artistmodalProfileName").prop("name", "reloadFile");
                        $(".artistmodalInfo").prop("value", decodeURIComponent(check.myInfo.replace(/\+/g," ")));
                        $("#InfoProfile").prop("value", decodeURIComponent(check.myProfile.replace(/\+/g," ")));
                        $("#InfoReProfile").prop("value", decodeURIComponent(check.myReProfile.replace(/\+/g," ")));
                        $(".modalActionCheck").prop("action", "UpdateArtistInfo.na");
                        $(".artistInfoButton").html("MyInfo Update");
                        $("#modifyPhoto").attr("src",path);
                        $("#modalInfo").modal();
                     }else {
                        $(".modalActionCheck").prop("action", "InsertArtistInfo.na");
                        $(".artistmodalProfileName").prop("name", "uploadFile");
                        $(".artistInfoButton").html("MyInfo Insert");
                        $("#modalInfo").modal();
                     }            
                  }
               });
            });
          });
      
      /* ????????? ????????? ??? ?????? ?????? ??????  */
      $(function() {
           function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader(); //????????? ?????? ?????? FileReader?????? ??????
                    reader.onload = function (e) {
                    //?????? ?????????????????? ??????????????? ???????????? ????????? ?????????
                        $('#modifyPhoto').attr('src', e.target.result);
                        //????????? Tag??? SRC????????? ???????????? File????????? ??????
                        //(?????? ???????????? ???????????? dataURL??????)
                    }                   
                    reader.readAsDataURL(input.files[0]);
                    //File????????? ?????? dataURL????????? ???????????? ??????
                }
           }
           function readURL2(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader(); //????????? ?????? ?????? FileReader?????? ??????
                    reader.onload = function (e) {
                    //?????? ?????????????????? ??????????????? ???????????? ????????? ?????????
                        $('#modifyPhoto2').attr('src', e.target.result);
                        //????????? Tag??? SRC????????? ???????????? File????????? ??????
                        //(?????? ???????????? ???????????? dataURL??????)
                    }                   
                    reader.readAsDataURL(input.files[0]);
                    //File????????? ?????? dataURL????????? ???????????? ??????
                }
           }           
            $(".changeProfile").on('change', function(){
                readURL(this);
            });
            $(".changeWork").on('change', function(){
               readURL2(this);
            });
        });



         /* ?????? ???????????? ????????? ???????????? ??? ????????? ??????  */
         $(".updateWork").on("click", function(){
             $("option").remove(".styleDelete");
             getTattoStyle();
             var workCode = $(this).attr("id");
             $.ajax({
                url : "selectArtistWork.na",
                type : "post",
                data :{ "workCode" : workCode },
                dataType : "json",
                success : function(workData) {
                        $(".workImgPath").prop("value", decodeURIComponent(workData.workImgPath.replace(/\+/g," ")));
                        $(".updateWorkArea").prop("value", decodeURIComponent(workData.workInfo.replace(/\+/g," ")));
                        $("#workReImgPath").prop("value", decodeURIComponent(workData.workReImgPath.replace(/\+/g," ")));
                        $("#artistWorkCode").prop("value", workCode);
                        $("#modalUpdateWork").modal();             
               }
            });
         });
         /* ?????? ????????? ???????????? ?????????  */
         function getTattoStyle(){
            var artistId = "${ loginArtist.artistId }";
            $.ajax({
               url : "artistStyle.na",
               type : "post",
               data : { "artistId" : artistId },
               dataType : "json",
               success : function(style) {
                  for( var i in style ) {
                     var pStyle = decodeURIComponent(style[i].pStyle.replace(/\+/g," "));
                     var wOption = $("<option class='styleDelete' value='"+ pStyle +"'>"+ pStyle + "</option>");
                     $("#selectOption").after( wOption );
                  }
               }
            });
         }      
      </script>



   <!-- ???????????? ???????????? -->
   <div class="modal fade" id="modalArtistPrice" tabindex="-1" role="dialog" aria-labelledby="ARTIST_TITLE" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg" role="document">
         <!-- ??????????????? ??????  modal-dialog-centered -->
         <div class="modal-content" style="background-color: rgba(255, 255, 255, 0.4);">
            <div class="modal-header">
               <h5 class="modal-title" id="TEST">
                  <b>???????????? ???????????? ?????? ??????</b>
               </h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body book-a-table" style="align:center;">
               <form action="updateArtistPrice.na" method="post" role="form" class="php-email-form priceActionCheck" data-aos="fade-up"
                  data-aos-delay="100" enctype="multipart/form-data">
                  <div>
                     <!-- ????????? -->
                     <div class="col-lg-4 col-md-6 form-group">
                        ?????? ????????? <select name="pStyle"
                           class="form-control tattoStyle" id="name" style="width:500px;">
                           <option value="pleaseSelect" selected>?????? ?????????</option>
                           <option value="????????????">????????????</option>
                           <option value="????????????">????????????</option>
                           <option value="?????????">?????????</option>
                           <option value="????????????">????????????</option>
                           <option value="???????????????">???????????????</option>
                           <option value="?????????">?????????</option>
                        </select>
                        <div class="validate"></div>
                     </div>

                     <!-- ???????????? ?????? ?????? -->
                     <div class="col-lg-4 col-md-6 form-group tattolayer" style="display: none;">
                        38x38mm 
                        <input type="text" style="width:500px;" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize1" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br>
                        38x64mm 
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize2" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br> 
                        65x76mm 
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize3" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br> 
                           
                        102x127mm
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize4" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br>
                            
                        152x152mm 
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize5" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br>
                           
                        203x152mm
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize6" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br>
                        210x297mm 
                        <input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                           name="pSize7" class="form-control" id="name" placeholder="????????? ???????????????." data-rule="minlen:1"
                           data-msg="????????? ???????????????"><br>
                        <div class="validate"></div>
                     </div>
                  </div>
                  <div class="mb-3">
                     <div class="loading">Loading</div>
                  </div>
                  <div class="text-center">
                     <button type="submit" class="artistPriceButton"></button>
                  </div>
                  <input type="hidden" name="artistId"
                     value="${ loginArtist.artistId }">
               </form>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">CLOSE</button>
            </div>
         </div>
      </div>
   </div>
   <footer>
      <jsp:include page="../common/InfoFooter.jsp" />
   </footer>
   <script>
      function insertFollowing(){
         var artistId = "${ artistInfo.artistId }";
         var customerId = "${ loginCustomer.customerId }";
         console.log(customerId);
         console.log(artistId);
         if( customerId == "") {
            alert("????????? ???, ????????????????????? ! ");
         }else {
            $.ajax({
               url : "InsertArtistFollow.na",
               type : "post",
               data : { "artistId" : artistId,
                      "customerId" : customerId },      
               success : function(chk) {
                  if( chk == "success") {
                     $("#followCheck").attr("class","fas fa-heart");
                     $("#clickChange").attr("onclick","deleteFollowing();");
                  }else {
                     alert("??? ?????????");
                  }
               }
            });
         }
      }
      function deleteFollowing(){
         var artistId2 = "${ artistInfo.artistId }";
         var customerId2 = "${ loginCustomer.customerId }";
         console.log("??????"+customerId2);
         console.log("??????"+ artistId2);
         if( customerId2 == "") {
            alert("????????? ???, ????????????????????? ! ");
         }else {
            $.ajax({
               url : "deleteArtistFollow.na",
               type : "post",
               data : { "artistId" : artistId2,
                      "customerId" : customerId2 },      
               success : function(dchk) {
                  if( dchk == "success") {
                     $("#clickChange").attr("onclick","insertFollowing();");
                     $("#followCheck").attr("class","far fa-heart");
                  }else {
                     alert("????????????");
                  }
               }
            });
         }
      }     
     </script>
     
     
     
     
     
     
   <div class="modal fade" id="modalrList" tabindex="-1" role="dialog" aria-labelledby="ARTIST_TITLE" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl" role="document">
         <div class="modal-content"><!-- style="background-color: rgba(255, 255, 255, 0.4);" -->
            <div class="modal-header">
               <h5 class="modal-title" id="TEST">
                  <b style="color:black;">?????? ????????????</b>
               </h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body book-a-table" style="font-size:13px;">
                  <table class="table addRv">
                  <thead>
                     <tr>
                        <th>ID</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Picture</th>
                        <th>Size</th>
                        <th>Style</th>
                        <th>Part</th>
                        <th>Price</th>
                        <th>Request</th>
                        <th>Check</th>
                     </tr>
                  </thead>
                  <tbody></tbody>
                  </table>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">CLOSE</button>
            </div>
         </div>
      </div>
   </div>                                           

   <!--??????????????????  -->
   <script>
   
      $("#rListModal").on("click",function(){
         var artistId = "${ loginArtist.artistId }";
         console.log(artistId);
         $.ajax({
            url : "artistReservationList.na",
            type : "post",
            data : { "artistId" : artistId },
            dataType : "json",
            success : function(data){
               var $tBody = $(".addRv tbody");
               var $tr;
               $tBody.html("");
               if( data.length > 0 ){
                  for( var r in data ){
                     var $artistName = $("<td>").text(decodeURIComponent(data[r].artistName.replace(/\+/g," ")));
                     var $renameFilename = $("<td>").text(decodeURIComponent(data[r].renameFilename.replace(/\+/g," ")));
                     var original = decodeURIComponent(data[r].originalFilename.replace(/\+/g," "));
                     
                     var $originalFilename = $("<td><a target='_blank' href='resources/images/ruploadFiles/"+decodeURIComponent(data[r].renameFilename.replace(/\+/g," "))+"'>????????????</a>");
                     var $originalFilenameWork = $("<td><a target='_blank' href='resources/artistInfoFile/WorkFile/"+decodeURIComponent(data[r].renameFilename.replace(/\+/g," "))+"'>????????????</a>");
                      /* var $originalFilename = $("<td><img src='resources/images/ruploadFiles/"+decodeURIComponent(data[r].renameFilename.replace(/\+/g," "))+"' style='width:50px; height:50px;' class='imgBoom'>"); */
                     var $request = $("<td width='200'>").text(decodeURIComponent(data[r].request.replace(/\+/g," ")));
                     var $style = $("<td style='font-size:13px;'>").text(decodeURIComponent(data[r].style.replace(/\+/g," ")));
                     var $part = $("<td>").text(decodeURIComponent(data[r].part.replace(/\+/g," ")));
                     /* var $shopName = $("<td>").text(decodeURIComponent(data[r].shopName.replace(/\+/g," "))); */
                     var $customerId = $("<td>").text(data[r].customerId);
                     var $reservationDate = $("<td style='font-size:13px;'>").text(data[r].reservationDate);
                     var $reservationTime = $("<td>").text(data[r].reservationTime);
                     var $tattooSize = $("<td style='font-size:13px;'>").text(data[r].tattooSize);
                     var $price = $("<td>").html(data[r].price+"<br>won");
                     var $rCheck0 = $("<td>").html("<button value='"+data[r].reservationCode+"'  class='btn btn-outline-danger btn-sm' onclick='updateStatus(this,0);'>??????????????????</button> <button value='"+data[r].reservationCode+"'  class='btn btn-outline-dark btn-sm rDelete' onclick='deleteStatus(this);'>????????????</button>");
                     var $rCheck1 = $("<td>").html("<button value='"+data[r].reservationCode+"'  class='btn btn-outline-info btn-sm' onclick='updateStatus(this,1);'>??????????????????</button>");
                     var $rCheck2 = $("<td>").html("<button value='"+data[r].reservationCode+"'  class='btn btn-success btn-sm' onclick='successStatus();'>????????????</button>");
                     /* var $dCheck = $("<td>").html("<button value='"+data[r].reservationCode+"'  class='btn btn-outline-dark btn-sm nonono' onclick='deleteStatus(this,0);'>??????</button>"); */
                     $tr = $("<tr>");
                     $tr.append($customerId);
                     $tr.append($reservationDate);
                     $tr.append($reservationTime);
                     /* $tr.append($shopName); */
                     if(original=='??????????????????'){
                        $tr.append($originalFilenameWork)
                     }else{
                        $tr.append($originalFilename);
                     }
                     $tr.append($tattooSize);
                     $tr.append($price);
                     $tr.append($style);
                     $tr.append($part);
                     $tr.append($price);
                     $tr.append($request);
                     if( data[r].status == 0){
                        $tr.append($rCheck0);
                        /* $tr.append($dCheck); */
                     }else if(data[r].status == 1) {
                        $tr.append($rCheck1);
                     } else {
                        $tr.append($rCheck2);
                     }
                     $tBody.append($tr);
                  }
               } else {
                  $tr = $("<tr>");
                  var Message = $("<td colspan='10' style='text-align:center; font-size:15px;'>").text("????????? ????????? ????????????.");
                  $tr.append(Message);
                  $tBody.append($tr);
               }
               $("#modalrList").modal();
            }
         });
      });
      /* ???????????? */
      function deleteStatus(obj){
         var sDelete = confirm("????????? ?????????????????????????");
         var dStat = status;
         if(sDelete) {
            var rCode = $(obj).val();
            $.ajax({
               url : "deleteStatus.na",
               type : "post",
               data : { "reservationCode" : rCode },
               success : function(data){
                  if ( data == "success") {
                     alert("????????? ?????????????????????.");
                     $(obj).parent().parent().remove();
                  } else {
                     alert("?????? ! ");
                  } 
               }
            });                  
         }
      }
      /* ???????????? ??? ???????????? */
       function updateStatus(obj,status){
         var modify = confirm("?????? ?????? ??? ?????? ?????????????????????????");
         var uStat = status;
         if(modify){
            var rCode = $(obj).val();
            $.ajax({
               url : "updateStatus.na",
               type : "post",
               data : { "reservationCode" : rCode, "status" : uStat },
               success : function(data){
                  if ( data == "0") {
                     alert("????????? ?????????????????????.");
                     $(obj).attr("class","btn btn-outline-info btn-sm");
                     $(obj).attr("onclick","updateStatus(this,1)");
                     $(obj).next().remove(".rDelete");
                     $(obj).text("??????????????????");
                  } else {
                        alert("?????? ????????? ?????????????????????.")
                        $(obj).attr("class","btn btn-success btn-sm");
                        $(obj).attr("onclick","successStatus();");
                        $(obj).text("????????????");
                  } 
               }
            });      
         }
      }
      /* ?????? ???, ?????? ?????????  */
       function successStatus(){
          alert("????????? ?????? ???????????????.")
       }
   </script>     
   <script>
      $(function(){
         getReviewList(1);
         setInterval(function(){
            getReviewList();
         }, 90000);
      });
      function getReviewList(page) {
         var artistId = "${ artistInfo.artistId }";
         console.log("????????? ??????????????? " + page);
         console.log("???????????? ????????? " + artistId);
         $.ajax({
            url : "ArtistReviewList.na",
            type : "post",
            data : { "artistId" : artistId, "page" : page },
            dataType : "json" ,
            success : function(data){
               console.log("?????????" + data.pi.currentPage);
               var $review = "";
               $("#pageArea").html("");
               $("#nextReview").parent().children("#reviewAjax").remove();
               console.log(data);
               if( data.aReview.length > 0 ){
                  for(i = 0; i < data.aReview.length; i++ ) {
                	 
                        if( data.aReview[i].reviewPhoto != null ){
                           $review += "<div class='testimonial-item' style='height:50px;' id='reviewAjax' data-aos='fade-up'>";
                           $review += "<p><span style='color:orange;'>' "+ decodeURIComponent(data.aReview[i].customerId.replace(/\+/g," "))+" ' </span> ?????? ???????????????."
                     			   + "<a href='resources/review/"+(data.aReview[i].reviewCode)+"/"+(data.aReview[i].reviewPhoto)+"' target='_blank'><i class='icofont-camera'></i></a> <span id='grade"+(data.aReview[i].reviewCode)+"' style='color:#cda45e' ><span class='1'> <i class='far fa-star'></i></span><span class='2'> <i class='far fa-star'></i></span><span class='3'> <i class='far fa-star'></i></span><span class='4'> <i class='far fa-star'></i></span><span class='5'> <i class='far fa-star'></i></span></span>" //????????? ??????
                                   + "<br><br><i class='bx bxs-quote-alt-left quote-icon-left'></i>"
                                   + decodeURIComponent(data.aReview[i].reviewContents.replace(/\+/g," "))
                                 if( data.aReview[i].customerProfile != null ) {
	                           	   $review += "<i class='bx bxs-quote-alt-right quote-icon-right'></i></p><img src='resources/customerProfile/"+(data.aReview[i].customerId)+"/"+(data.aReview[i].customerProfile)+"' style='width:90px; height:90px;' class='testimonial-img'>";
                                 } else {
                            	   $review += "<i class='bx bxs-quote-alt-right quote-icon-right'></i></p><img src='resources/artistInfoFile/Profile/NATTAprofile.png' style='width:90px; height:90px;' class='testimonial-img'>";
                                 }
                                  
                            $review += "</div>"; 
                     } 
                        if( data.aReview[i].reviewPhoto == null ){
                        $review += "<div class='testimonial-item' style='height:50px;' id='reviewAjax' data-aos='fade-up'>";
                        $review += "<p><span style='color:orange;'>' "+ decodeURIComponent(data.aReview[i].customerId.replace(/\+/g," "))+" ' </span> ?????? ???????????????."
                               + "<br><br><i class='bx bxs-quote-alt-left quote-icon-left'></i>"
                               + decodeURIComponent(data.aReview[i].reviewContents.replace(/\+/g," "))
                                 if( data.aReview[i].customerProfile != null ) {
	                           	   $review += "<i class='bx bxs-quote-alt-right quote-icon-right'></i></p><img src='resources/customerProfile/"+(data.aReview[i].customerId)+"/"+(data.aReview[i].customerProfile)+"' style='width:90px; height:90px;' class='testimonial-img'>";
                                 } else {
                            	   $review += "<i class='bx bxs-quote-alt-right quote-icon-right'></i></p><img src='resources/artistInfoFile/Profile/NATTAprofile.png' style='width:90px; height:90px;' class='testimonial-img'>";
                                 }
                        $review += "</div>";                        
                     }   
                  }
               } else {
                  $review = "<h3 style='text-align:center;'>????????? ????????? ????????????.</h3>";
               }
               $("#nextReview").parent().append($review);
               
               // ?????? ??????
               for(i = 0; i < data.aReview.length; i++ ) {
               $("#grade"+data.aReview[i].reviewCode).children("."+data.aReview[i].reviewStar).prevAll().children().attr("class","fas fa-star");
               $("#grade"+data.aReview[i].reviewCode).children("."+data.aReview[i].reviewStar).children().attr("class","fas fa-star");
               }
               
               var $span = $("<span>");
               var $1 = ' < ';
               var $2 = $("<a class='pageColor' onclick='getReviewList("+parseInt(data.pi.currentPage-1)+")';>").text(' < ');
               var $4 = ' > ';
               var $5 = $("<a class='pageColor' onclick='getReviewList("+parseInt(data.pi.currentPage+1)+")';>").text(' > ');
               var $6;
                if(data.pi.currentPage <= 1 ) {
                   $span.append($1);
               }
               if(data.pi.currentPage > 1 ) {
                  $span.append($2);
               } 
               
               for( var i = data.pi.startPage; i < data.pi.endPage+1; i++) {
                  if(i == parseInt(data.pi.currentPage)) {
                     $6 = $("<a class='workhover' style='text-decoration: underline; color:orange;' onclick='getReviewList("+ i +")';>").text(i);
                     $span.append($6);
                     
                  }else {
                     $6 = $("<a class='workhover' onclick='getReviewList("+ i +")';>").text(i);
                     $span.append($6);
                  }
               }
               if(data.pi.currentPage >= data.pi.maxPage) {
                  $span.append($4);
               }
               if(data.pi.currentPage < data.pi.maxPage){
                  $span.append($5);
               }
               $("#pageArea").append($span);
               
            }
         });
      }
      
   </script>      

</body>
</html>