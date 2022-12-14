<%@page import="com.makeit.fund.FundVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Make-It 펀딩</title>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style1.css">

</head>

<body>
<%@include file ="/common/Header.jsp" %>

    <!-- Shop Catagory Area -->
    <div class="shop_by_catagory_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading mb-50">
                        <h5>Funding Category</h5>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="shop_by_catagory_slides owl-carousel">
                    
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageTech.do">
                                <img src="img/fund/categoryImg/tech.png" alt="">
                            </a>
                            <p>테크· 가전</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageFashion.do">
                                <img src="img/fund/categoryImg/fashion.png" alt="">
                            </a>
                            <p>패션 잡화</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageBeauty.do">
                                <img src="img/fund/categoryImg/beauty.png" alt="">
                            </a>
                            <p>뷰티</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageFood.do">
                                <img src="img/fund/categoryImg/food.png" alt="">
                            </a>
                            <p>푸드</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageHome.do">
                                <img src="img/fund/categoryImg/home.png" alt="">
                            </a>
                            <p>홈· 리빙</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageTravel.do">
                                <img src="img/fund/categoryImg/travel.png" alt="">
                            </a>
                            <p>여행· 레저</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageSports.do">
                                <img src="img/fund/categoryImg/sports.png" alt="">
                            </a>
                            <p>스포츠· 모빌리티</p>
                        </div>

                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageCharacter.do">
                                <img src="img/fund/categoryImg/character.png" alt="">
                            </a>
                            <p>캐릭터· 굿즈</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageBaby.do">
                                <img src="img/fund/categoryImg/baby.png" alt="">
                            </a>
                            <p>베이비· 키즈</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageAnimal.do">
                                <img src="img/fund/categoryImg/animal.png" alt="">
                            </a>
                            <p>반려동물</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageGame.do">
                                <img src="img/fund/categoryImg/game.png" alt="">
                            </a>
                            <p>게임· 취미</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageCulture.do">
                                <img src="img/fund/categoryImg/culture.png" alt="">
                            </a>
                            <p>컬쳐· 아티스트</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageConsulting.do">
                                <img src="img/fund/categoryImg/consulting.png" alt="">
                            </a>
                            <p>클래스· 컨설팅</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPagePublish.do">
                                <img src="img/fund/categoryImg/publish.png" alt="">
                            </a>
                            <p>출판</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageCampaign.do">
                                <img src="img/fund/categoryImg/campaign.png" alt="">
                            </a>
                            <p>기부· 캠페인</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageSponsor.do">
                                <img src="img/fund/categoryImg/sponsor.png" alt="">
                            </a>
                            <p>후원</p>
                        </div>
                        
                        <!-- Single Slide -->
                        <div class="single_catagory_slide">
                            <a href="fundingPageMeeting.do">
                                <img src="img/fund/categoryImg/meeting.png" alt="">
                            </a>
                            <p>모임</p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Catagory Area -->

    <!-- Quick View Modal Area -->
    <div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-labelledby="quickview" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal-body">
                    <div class="quickview_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 col-lg-5">
                                    <div class="quickview_pro_img">
                                        <img class="first_img" src="img/product-img/new-1-back.png" alt="">
                                        <img class="hover_img" src="img/product-img/new-1.png" alt="">
                                        <!-- Product Badge -->
                                        <div class="product_badge">
                                            <span class="badge-new">New</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-7">
                                    <div class="quickview_pro_des">
                                        <h4 class="title">Boutique Silk Dress</h4>
                                        <div class="top_seller_product_rating mb-15">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                        <h5 class="price">$120.99 <span>$130</span></h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia expedita quibusdam aspernatur, sapiente consectetur accusantium perspiciatis praesentium eligendi, in fugiat?</p>
                                        <a href="#">View Full Product Details</a>
                                    </div>
                                    <!-- Add to Cart Form -->
                                    <form class="cart" method="post">
                                        <div class="quantity">
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">
                                        </div>
                                        <button type="submit" name="addtocart" value="5" class="cart-submit">Add to cart</button>
                                        <!-- Wishlist -->
                                        <div class="modal_pro_wishlist">
                                            <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                        </div>
                                        <!-- Compare -->
                                        <div class="modal_pro_compare">
                                            <a href="compare.html"><i class="icofont-exchange"></i></a>
                                        </div>
                                    </form>
                                    <!-- Share -->
                                    <div class="share_wf mt-30">
                                        <p>Share with friends</p>
                                        <div class="_icon">
                                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick View Modal Area -->

    <!-- Best Selling Products -->
    <section class="best-selling-products-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading mb-50">
                        <h5>${fund.fundTitle } 검색 결과</h5>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
            
            	<c:if test="${empty searchBoardList}">
           			<tr>
           				<td>아직 데이터가 없습니다^^;;</td>
           			</tr>
           		</c:if>
                <c:if test="${not empty searchBoardList }">
	                <c:forEach var="fund" items="${searchBoardList}">
			                <div class="col-9 col-sm-6 col-md-4 col-lg-3">
			                    <div class="single-product-area mb-30">
			                        <div class="product_image">
			                            <!-- Product Image -->
			                           <img class="normal_img" src="img/fund/techImg/${fund.fundMainImg }" alt="">
			                            <!-- Wishlist -->
			                            <div class="product_wishlist">
			                                <a href="wishlist.html"><i class="icofont-heart"></i></a>
			                            </div>
			                        </div>
			                        <!-- Product Description -->
			                        <div class="product_description">
										 <div class="progress mb-3">
			                            	<div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
			                       	 	</div>
			                            <a href="productDetailView.do?fundIdx=${fund.fundIdx}">${fund.fundTitle }</a>
			                            <h6 class="product-price">${fund.computePrice} 원</h6>
			                        </div>
			                    </div>
			                </div>
	                </c:forEach>
           		</c:if>
                
            </div>
            
        </div>
    </section>
    <!-- Best Selling Products -->

<%@include file ="/common/Footer.jsp" %>