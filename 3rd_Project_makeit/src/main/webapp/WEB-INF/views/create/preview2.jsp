<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/style_jy.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="page-container">
		<div id="mi-header">
			<div class="web-header">
				<section class="PreviewHeader">
					<strong>미리 보기 모드</strong><span>저장한 내용을 미리 볼 수 있어요.</span>
				</section>
			</div>
		</div>

		<!-- 시작 -->
		<div id="container"
			class="wd-layout-sub-content reward is-preview actionbar-hide">
			<!-- S : 캠페인 액션바 -->
			<div class="campaign-action-container">
				<!-- S : 공간 배너 액션바 -->

				<!-- E : 공간 배너 액션바 -->
				<!-- S : 스토어 링크 액션바 -->

				<!-- E : 스토어 링크 액션바 -->
				<!-- S : 퍼딩하기 액션바 -->
				<div class="funding-action-bar">

					<div id="funding-message-popup" class="wz message-popup"
						style="display: none;">
						<input type="checkbox" id="message-popup-mobile">

						<!-- 프로젝트 유형이 프리오더 프로젝트가 아닌경우: 기존과 동일하게 처리 -->
						<em class="popup"> <label class="btn-close"
							for="message-popup-mobile"><i class="icon close"></i></label> 지금
							펀딩하기 고민된다면,<br>프로젝트를 찜해보세요.
						</em>



					</div>

					<button type="button" class="campaign-wish">
						<i class="icon-favorite-o"></i><i class="icon-favorite"></i><span
							class="text-hidden">찜하기</span>
					</button>



				</div>
				<!-- E : 퍼딩하기 액션바 -->
			</div>
			<!-- E : 캠페인 액션바 -->

			<!-- S : 리워드 헤더 -->
			<div class="reward-header">
				<div class="bg"
					style="background-image: url(https://cdn.wadiz.kr/wwwwadiz/green001/2022/1206/20221206010437193_174982.jpg/wadiz/format/jpg/quality/80/optimize)"></div>
				<p class="title-info">
					<em>테크·가전</em>
				</p>
				<h2 class="title">
					<a href="/web/campaign/detail/174982">프로젝트 제목</a>
				</h2>
			</div>
			<!-- E : 리워드 헤더 -->

			<!-- S: 리워드 오픈된 프로젝트 새소식 scroll 포커스 위치 -->
			<div id="openRewardNavigationLocation"></div>
			<!-- E: 리워드 오픈된 프로젝트 새소식 scroll 포커스 위치 -->

			<!-- S : 리워드 네비게이션 -->
			<div class="reward-nav">
				<input type="hidden" id="campaignId" value="174982"> <input
					type="hidden" id="campaignTitle" value="프로젝트 제목">
				<ul class="tab-list">
					<li class="active"><a class="tab-link" href="#"
						onclick="campaignDetail('story');">스토리</a></li>
					<li><a class="tab-link"
						href="/web/campaign/detail/174982#campaign-rewards"
						data-tab-reward="true">리워드</a></li>
					<li><a class="tab-link" href="#"
						onclick="campaignDetail('fundingInfo');">반환・정책</a></li>
					<li><a class="tab-link disabled"
						href="/web/campaign/detailPost/174982">새소식 </a></li>
					<li><a class="tab-link disabled"
						href="/web/campaign/detail/qa/174982">커뮤니티 </a></li>
					<li><a class="tab-link disabled"
						href="/web/campaign/detailBacker/174982">서포터 </a></li>
				</ul>
			</div>
			<!-- E : 리워드 네비게이션 -->
			<div class="reward-body-wrap">
				<!-- S : 서브 컨텐트 영역 -->
				<div class="wd-ui-sub-contents">
					<!-- S : 페이지 레이아웃 컨테이너 -->
					<div class="wd-ui-info-wrap">
						<!-- S : 우측 캠페인 관련 정보 -->
						<div class="wd-ui-sub-opener-info" style="padding-top: 0;">
							<!-- S : 프로젝트 정보 ******************************************************************* 웹 -->
							<h3 class="text-hidden">프로젝트 정보</h3>
							<div class="project-state-info">
								<div class="state-box">
									<p class="achievement-rate" style="margin-bottom: 16px;">
										<strong>0</strong>% 달성
									</p>
									<p class="total-amount" style="margin-bottom: 16px;">
										<strong>0</strong>원 펀딩
									</p>
									<p class="total-supporter" style="margin-bottom: 16px;">
										<strong>0</strong>명의 서포터
									</p>
								</div>

								<!-- S : 예약구매 중 글로벌/앵콜 일 경우 노출 -->
								<!-- E : 예약구매 중 글로벌/앵콜 일 경우 노출 -->

								<div class="btn-wrap share">
									<div class="btn-wrap-flex">
										<button class="campaign-wish btn-wish">
											<i class="icon-wish"></i> <em class="count-wish">0</em>
										</button>
										<button class="campaign-message btn-message">
											<i class="chat-o icon" aria-hidden="true"></i>문의
										</button>
										<button id="btnShare" class="campaign-share btn-share"
											onclick="wadiz.share.kakaoSdkInit();">공유하기</button>
									</div>
									<div class="wz message-popup bottom">
										<input type="checkbox" id="message-popup-desktop">

										<!-- 프로젝트 유형이 프리오더 프로젝트가 아닌경우: 기존과 동일하게 처리 -->

									</div>

									<div id="shareSection" class="share-section">
										<ul class="share-list" style="margin-top: 10px">
											<li><button
													class="wz button dense icon-facebook circular"
													onclick="wadiz.share.facebook();" title="페이스북 공유"
													style="width: 36px; padding: 0"></button></li>
											<li><button class="wz button dense icon-kakao circular"
													onclick="wadiz.share.kakao();" title="카카오톡 공유"
													style="width: 36px; padding: 0"></button></li>
											<li><button
													class="wz button dense icon-twitter circular"
													onclick="wadiz.share.twitter();" title="트위터 공유"
													style="width: 36px; padding: 0"></button></li>
											<li><button class="wz button dense icon-link circular"
													onclick="wadiz.share.urlCopy();" title="URL 공유"
													style="width: 36px; padding: 0"></button></li>
											<li><button class="wz button dense icon-code circular"
													onclick="window.open('/web/embed/reward/174982','_blank');"
													title="임베드 공유" style="width: 36px; padding: 0"></button></li>
										</ul>
									</div>
								</div>
								<div class="banner-section-RB2">
									<a
										href="https://www.wadiz.kr/web/wevent/firstfunding?_refer_section_st=RB2_0"
										class="banner-coupon"> </a>
								</div>
							</div>
							<!--E : 프로젝트 정보  -->

							<!--S : 네이버페이 혜택  -->
							<div class="naver-pay-benefits">
								<div id="naver-pay-benefits" data-is-donation-category="false"
									data-is-preorder-type="false">
									<div class="NaverPayBenefits_container__oXp3I">
										<div>
											<button type="button"
												class="Tooltip_button__-MP6V NaverPayBenefits_tooltip__89DV7"
												title="결제 시 네이버페이 포인트 1% 적립" aria-describedby="Tooltip_21">
												<span class="Tooltip_label__2V7JK">결제 시 네이버페이 포인트 1%
													적립</span><span class="Tooltip_helpIconWrap__2kvlN"><svg
														viewBox="0 0 40 40" focusable="false" role="presentation"
														class="withIcon_icon__1QTPX Tooltip_helpOutlineIcon__WMkVJ"
														aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path
															d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
														<path
															d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path></svg>
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__1QTPX Tooltip_helpIcon__2Sckr"
														aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path
															d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path></svg></span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!--E : 네이버페이 혜택  -->

							<!--S : 팔로우활동 정보  -->
							<div class="social-info">
								<a href="/web/campaign/detailBacker/174982">
									<figure>
										<div class="profiles">
											<span style="background-image: url()"></span>
										</div>
										<figcaption>
											<p>
												<strong></strong>
											</p>
										</figcaption>
									</figure> <span class="icon-chevron-right"> </span>
								</a>
							</div>
							<!--E : 팔로우활동 정보  -->

							<!-- S : 메이커 정보  -->

							<div class="project-maker-info">
								<h3 class="project-right-title">메이커 정보</h3>
								<div id="funding-maker-info" data-enc-user-id="4590217608"
									data-campaign-id="174982"
									data-image-url="https://www.wadiz.kr/wwwwadiz/green001/2022/1206/20221206010655930_174982.png"
									data-maker-name="메이커명" data-answer-hour-time=""
									data-member-list="[]" data-host-email="test@test.com"
									data-host-call-num="01012345678" data-website-a=""
									data-website-b="" data-social-url-fb="" data-social-url-tw=""
									data-social-url-ig="" data-is-preview="true">
									<div class="FundingMakerInfoContainer_container__hy1D5">
										<div class="FundingMakerInfoContainer_header__1pDXk">
											<a
												class="MakerInfoHeader_link__HmY8C MakerInfoHeader_disabled__11rlW"
												href=""><button
													class="Avatar_avatar__CiRY0 Avatar_xs__1Mz7G MakerInfoHeader_avatar__ltZMd">
													<span
														style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1206/20221206010655930_174982.png/wadiz/resize/100/format/jpg/quality/90/&quot;);"></span>
												</button>
												<div class="MakerInfoHeader_texts__1vfam">
													<span class="MakerInfoHeader_makerName__KDu0a">메이커명</span>
												</div></a>
											<button
												class="AccordionButton_accordionButton__M9bzX FundingMakerInfoContainer_accordionButton__3agGg">
												<svg viewBox="0 0 32 32" focusable="false"
													role="presentation" class="withIcon_icon__2cPeY"
													aria-hidden="true">
													<path
														d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
											</button>
										</div>
										<div
											class="MakerInfoConfidenceIndexSection_container__3lXsa FundingMakerInfoContainer_indexSection__GYeql">
											<div
												class="MakerInfoConfidenceIndex_container__5UZJq MakerInfoConfidenceIndexSection_index__1DtBl">
												<span class="MakerInfoConfidenceIndex_label__1V3G-">평판</span>
												<div class="MakerInfoConfidenceIndex_graph__X6ujB">
													<div class="MakerInfoConfidenceIndex_bar__3ogb5"></div>
												</div>
											</div>
											<div
												class="MakerInfoConfidenceIndex_container__5UZJq MakerInfoConfidenceIndexSection_index__1DtBl">
												<span class="MakerInfoConfidenceIndex_label__1V3G-">소통</span>
												<div class="MakerInfoConfidenceIndex_graph__X6ujB">
													<div class="MakerInfoConfidenceIndex_bar__3ogb5"></div>
												</div>
											</div>
											<div class="MakerInfoConfidenceIndex_container__5UZJq">
												<span class="MakerInfoConfidenceIndex_label__1V3G-">인기</span>
												<div class="MakerInfoConfidenceIndex_graph__X6ujB">
													<div class="MakerInfoConfidenceIndex_bar__3ogb5"></div>
												</div>
											</div>
											<div>
												<button type="button"
													class="Tooltip_button__-MP6V MakerInfoConfidenceIndexSection_tooltip__3LGPG"
													title="BETA" aria-describedby="Tooltip_4">
													<span class="Tooltip_label__2V7JK">BETA</span><span
														class="Tooltip_helpIconWrap__2kvlN"><svg
															viewBox="0 0 40 40" focusable="false" role="presentation"
															class="withIcon_icon__1QTPX Tooltip_helpOutlineIcon__WMkVJ"
															aria-hidden="true">
															<path fill="none" d="M0 0h40v40H0z"></path>
															<path
																d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
															<path
																d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path></svg>
														<svg viewBox="0 0 40 40" focusable="false"
															role="presentation"
															class="withIcon_icon__1QTPX Tooltip_helpIcon__2Sckr"
															aria-hidden="true">
															<path fill="none" d="M0 0h40v40H0z"></path>
															<path
																d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path></svg></span>
												</button>
											</div>
											<div
												class="MakerInfoConfidenceIndexSection_emptyMessage___8EOM">
												<span class="MakerInfoConfidenceIndexSection_emoji__3RpPx"
													role="img" aria-label="face with monocle">🧐</span><span
													class="MakerInfoConfidenceIndexSection_text__3iIJ7">메이커를
													알아가고 있으니<br>조금만 기다려주세요
												</span>
												<button
													class="MakerInfoConfidenceIndexSection_closeButton__p5tbm">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation" class="withIcon_icon__2cPeY"
														aria-hidden="true">
														<path
															d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
												</button>
											</div>
										</div>
										<div class="MakerInfoButtonSection_container__1kr0h">
											<button
												class="Button_button__NY-pS Button_secondary__1LwxB Button_md__23rz_ MakerInfoButtonSection_button__35bCE"
												type="button">
												<span><span class="Button_children__zgA2f"><span
														class="MakerInfoButtonSection_buttonContent__I2Heu"><svg
																viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__2cPeY"
																aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path
																	d="M10.62 38.33V29H2.87V1.67h34.26v27.79H18.92zM5 27h7.7v6.11l5.3-5.73h17V3.75H5z"></path>
																<path
																	d="M12.84 13.28a1.87 1.87 0 100 3.74 1.87 1.87 0 100-3.74zm7.16 0a1.87 1.87 0 100 3.74 1.87 1.87 0 100-3.74zm7.16 0a1.87 1.87 0 100 3.74 1.87 1.87 0 100-3.74z"></path></svg>문의하기</span></span></span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- E : 메이커 정보  -->

							<!-- S : 모바일 지지서명  -->
							<div class="wz-sign-box-mobile">

								<div id="campaign-support-signature" data-count="0"
									data-campaign-id="174982"
									data-post-callback="postFeedMyFacebook"></div>

							</div>
							<!-- E : 모바일 지지서명  -->
							<!-- S : 보상품 목록, 참여할 때 드리는 선물  -->
							<div id="campaign-rewards" style="position: relative; top: -50px"></div>
							<div class="moveRewards">
								<!-- S : 서포터클럽 가입 -->
								<div id="supporter-club-subscribe-app"
									data-is-all-free-shipping-cost="false">
									<div role="button"
										class="FundingSupporterClubSubscriptionContainer_subscriptionButton__2HTma FundingSupporterClubSubscriptionContainer_isRewardPage__Iywtc">
										5초 가입, 모든 배송비와 쿠폰할인
										<svg viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__2cPeY FundingSupporterClubSubscriptionContainer_chevron__1mWFS"
											aria-hidden="true">
											<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
									</div>
								</div>
								<!-- E : 서포터클럽 가입 -->
								<div class="wd-ui-gift">
									<h3 class="project-right-title">리워드 선택</h3>

									<button class="rightinfo-reward-list  "
										onclick="backMoney('401492', 'false')">
										<div class="top-info">
											<dl class="reward-info">
												<dt>10,000원 펀딩</dt>
												<dd>
													<p class="reward-name">세트1</p>
													<p>스킨1+로션1</p>
												</dd>
											</dl>

											<ul class="data-info">
												<!-- 배송이 필요한 리워드(배송비 노출) -->
												<li class="shipping"
													style="width: 100%; margin-bottom: 5px;">배송비 <em>3,000원</em>
												</li>
											</ul>

											<p class="reward-soldcount">
												총 <strong>0</strong>개 펀딩완료
											</p>
										</div>


									</button>

									<button class="rightinfo-reward-list  "
										onclick="backMoney('401493', 'false')">
										<div class="top-info">
											<dl class="reward-info">
												<dt>20,000원 펀딩</dt>
												<dd>
													<p class="reward-name">세트2</p>
													<p>스킨2+로션2</p>
												</dd>
											</dl>

											<ul class="data-info">
												<!-- 배송이 필요한 리워드(배송비 노출) -->
												<li class="shipping"
													style="width: 100%; margin-bottom: 5px;">배송비 <em>3,000원</em>
												</li>
											</ul>
											<p class="reward-soldcount">
												총 <strong>0</strong>개 펀딩완료
											</p>
										</div>
									</button>

								</div>
							</div>
							<!-- E : 보상품 목록, 참여할 때 드리는 선물 -->

							<!-- S : 인기 프로젝트 리스트 -->
							<div id="normalpane" class="recommend-box-container stoped">

								<div class="recommend-box"
									style="border: 0px; padding: 0px; margin: 0px;">
									<div class="App_container__t0vcU">
										<div class="PopularDesktop_container__3UXQV">
											<div class="PopularDesktop_header__3rc0H">
												<div class="PopularDesktop_title__39tIW">펀딩 랭킹 TOP10</div>
												<div class="Tooltip_container__36IdB">
													<div class="Tooltip_symbol__3pUOM">
														<div style="display: none;">
															<svg viewBox="0 0 40 40" focusable="false"
																role="presentation"
																class="withIcon_icon__2cPeY Tooltip_tooltip__1MtXO"
																aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path
																	d="M20 1a19 19 0 1019 19A19.06 19.06 0 0020 1zm0 29.5a1.8 1.8 0 111.8-1.79 1.8 1.8 0 01-1.8 1.75zm6-16.13a6.28 6.28 0 01-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 012.3-5.7L22 18a4.29 4.29 0 002-3.7 3.7 3.7 0 00-4-4 3.7 3.7 0 00-4 4h-2a5.7 5.7 0 016-6 5.7 5.7 0 016 6z"></path></svg>
														</div>
														<div style="display: block;">
															<svg viewBox="0 0 40 40" focusable="false"
																role="presentation"
																class="withIcon_icon__2cPeY Tooltip_tooltipActive__1fmny"
																aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path
																	d="M20 39a19 19 0 1119-19 19.06 19.06 0 01-19 19zm0-36a17 17 0 1017 17A17 17 0 0020 3z"></path>
																<path
																	d="M24.34 10A5.75 5.75 0 0020 8.33a5.7 5.7 0 00-6 6h2a3.7 3.7 0 014-4 3.7 3.7 0 014 4A4.29 4.29 0 0122 18l-.7.6a6.51 6.51 0 00-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 002.7-5.2 5.73 5.73 0 00-1.66-4.3zM20 26.87a1.8 1.8 0 100 3.6 1.8 1.8 0 100-3.6z"></path></svg>
														</div>
													</div>
													<div class="Tooltip_messagebox__24RSt"
														style="width: 230px;">조회 시간을 기준으로 24시간 내 프로젝트 참여자가
														많은 순으로 노출됩니다</div>
												</div>
											</div>
											<div class="PopularDesktop_separator__13mT5"></div>
											<div class="CardTable_container__2PY4P"
												style="width: calc(100% - 0px);">
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">1</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/167789?_refer_section_st=Popular_0"
														title="[역대1위 45억] 30만원대, 윈도우11서피스형 노트북. 베이직북S.">[역대1위
															45억] 30만원대, 윈도우11서피스형 노트북. 베이직북S.</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">2</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/163388?_refer_section_st=Popular_1"
														title="[확장앵콜] 짜릿한 중세공성전 <캐터펄트킹덤>! 풀확장으로 더 강력하게!">[확장앵콜]
															짜릿한 중세공성전 &lt;캐터펄트킹덤&gt;! 풀확장으로 더 강력하게!</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">3</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/169898?_refer_section_st=Popular_2"
														title="단독|연매출 40억! 3달 기다려 먹는 레전드 <사과떡볶이>의 신제품">단독|연매출
															40억! 3달 기다려 먹는 레전드 &lt;사과떡볶이&gt;의 신제품</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">4</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/168916?_refer_section_st=Popular_3"
														title="[누적 1억+]이번엔 말차&amp;밀크티 맛! 쩝쩝박사들이 맛으로 먹는 요거트!">[누적
															1억+]이번엔 말차&amp;밀크티 맛! 쩝쩝박사들이 맛으로 먹는 요거트!</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">5</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/157989?_refer_section_st=Popular_4"
														title="프로틴 섭취? 쉐이커 없이, 한 입에 털어먹는 초간편 <구슬프로틴> ">프로틴 섭취?
															쉐이커 없이, 한 입에 털어먹는 초간편 &lt;구슬프로틴&gt; </a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">6</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/171387?_refer_section_st=Popular_5"
														title="망고부터 황치즈까지? 르꼬르동셰프가 블렌딩한 극찬의 버터! 크리스마스배송">망고부터
															황치즈까지? 르꼬르동셰프가 블렌딩한 극찬의 버터! 크리스마스배송</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">7</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/170815?_refer_section_st=Popular_6"
														title="1억 앵콜! 0.1%의 따가움도 없는, 캐시미어 블렌디드 [솜털니트]">1억 앵콜!
															0.1%의 따가움도 없는, 캐시미어 블렌디드 [솜털니트]</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">8</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/170981?_refer_section_st=Popular_7"
														title="[당일생산 수제 카이막] 쫀득하고 부드럽게 입 안에서 사르르~#천상의맛">[당일생산
															수제 카이막] 쫀득하고 부드럽게 입 안에서 사르르~#천상의맛</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 8px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">9</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/170791?_refer_section_st=Popular_8"
														title="[22년마지막앵콜I새해배송]베스트구성으로 돌아온 단백질39g 식단도시락">[22년마지막앵콜I새해배송]베스트구성으로
															돌아온 단백질39g 식단도시락</a></li>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 0px;">
													<li class="PopularCardDesktop_item__2NBkG"><div
															class="PopularCardDesktop_ranking__1iPy2">10</div> <a
														class="PopularCardDesktop_projectName__3HH8P"
														href="/web/campaign/detail/158318?_refer_section_st=Popular_9"
														title="모든 이유식 스푼이 아기만을 생각할때 브릭오는 엄마의 행복까지 생각합니다">모든
															이유식 스푼이 아기만을 생각할때 브릭오는 엄마의 행복까지 생각합니다</a></li>
												</div>
											</div>
										</div>
										<div class="AIRecommendationDesktop_container__Kh9H6">
											<div class="AIRecommendationDesktop_header__20IOW">
												<div class="AIRecommendationDesktop_title__3ULAg">같이
													펀딩하기 좋은</div>
												<div class="Tooltip_container__36IdB">
													<div class="Tooltip_symbol__3pUOM">
														<span class="AISymbol_icon__2gIjg"></span>
														<div style="display: none;">
															<svg viewBox="0 0 40 40" focusable="false"
																role="presentation"
																class="withIcon_icon__2cPeY Tooltip_tooltip__1MtXO"
																aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path
																	d="M20 1a19 19 0 1019 19A19.06 19.06 0 0020 1zm0 29.5a1.8 1.8 0 111.8-1.79 1.8 1.8 0 01-1.8 1.75zm6-16.13a6.28 6.28 0 01-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 012.3-5.7L22 18a4.29 4.29 0 002-3.7 3.7 3.7 0 00-4-4 3.7 3.7 0 00-4 4h-2a5.7 5.7 0 016-6 5.7 5.7 0 016 6z"></path></svg>
														</div>
														<div style="display: block;">
															<svg viewBox="0 0 40 40" focusable="false"
																role="presentation"
																class="withIcon_icon__2cPeY Tooltip_tooltipActive__1fmny"
																aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path
																	d="M20 39a19 19 0 1119-19 19.06 19.06 0 01-19 19zm0-36a17 17 0 1017 17A17 17 0 0020 3z"></path>
																<path
																	d="M24.34 10A5.75 5.75 0 0020 8.33a5.7 5.7 0 00-6 6h2a3.7 3.7 0 014-4 3.7 3.7 0 014 4A4.29 4.29 0 0122 18l-.7.6a6.51 6.51 0 00-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 002.7-5.2 5.73 5.73 0 00-1.66-4.3zM20 26.87a1.8 1.8 0 100 3.6 1.8 1.8 0 100-3.6z"></path></svg>
														</div>
													</div>
													<div class="Tooltip_messagebox__24RSt"
														style="width: 235px;">AI가 프로젝트별 특성과 와디즈 서포터들의 취향을
														분석하여 추천해요</div>
												</div>
											</div>
											<div class="AIRecommendationDesktop_separator__2CNAl"></div>
											<div class="CardTable_container__2PY4P"
												style="width: calc(100% - 0px);">
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 12px;">
													<a
														href="/web/campaign/detail/167976?_refer_section_st=coItemCurator_0"
														class="RecommendationCardDesktop_item__1n6Ae"><div
															class="RecommendationCardDesktop_contentContainer__mxIVf">
															<div class="RecommendationCardDesktop_projectName__1pkEQ"
																title="[간편설치]층간소음없이, 미끄러질 걱정없이 마음껏 뛸 수 있는 트램폴린">[간편설치]층간소음없이,
																미끄러질 걱정없이 마음껏 뛸 수 있는 트램폴린</div>
															<div class="RecommendationCardDesktop_description__2mUxw">
																<div class="RecommendationCardDesktop_rate__2d-I1">3834%</div>
																<div class="RecommendationCardDesktop_category__Yj-QH">베이비·키즈</div>
															</div>
														</div>
														<div
															class="RecommendationCardDesktop_thumbnailContainer__jBLTR">
															<div
																class="RecommendationCardDesktop_thumbnailPlaceholder__1mk2W"
																style="padding-top: calc(70% - 0px);">
																<div
																	class="RecommendationCardDesktop_thumbnail__2SkGD RecommendationCardDesktop_visible__3Bx9p"
																	style="background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1109/20221109162332539_167976.jpg/wadiz/resize/88/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1109/20221109162332539_167976.jpg/wadiz/resize/176/quality/85/&quot;) 2x);"></div>
															</div>
														</div></a>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 12px;">
													<a
														href="/web/campaign/detail/170070?_refer_section_st=coItemCurator_1"
														class="RecommendationCardDesktop_item__1n6Ae"><div
															class="RecommendationCardDesktop_contentContainer__mxIVf">
															<div class="RecommendationCardDesktop_projectName__1pkEQ"
																title="크리에이터들이 &quot;업무가 재미있어 졌어요&quot;라고 말한 이유, Grid Pro">크리에이터들이
																"업무가 재미있어 졌어요"라고 말한 이유, Grid Pro</div>
															<div class="RecommendationCardDesktop_description__2mUxw">
																<div class="RecommendationCardDesktop_rate__2d-I1">1146%</div>
																<div class="RecommendationCardDesktop_category__Yj-QH">테크·가전</div>
															</div>
														</div>
														<div
															class="RecommendationCardDesktop_thumbnailContainer__jBLTR">
															<div
																class="RecommendationCardDesktop_thumbnailPlaceholder__1mk2W"
																style="padding-top: calc(70% - 0px);">
																<div
																	class="RecommendationCardDesktop_thumbnail__2SkGD RecommendationCardDesktop_visible__3Bx9p"
																	style="background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1122/20221122190747643_170070.png/wadiz/resize/88/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1122/20221122190747643_170070.png/wadiz/resize/176/quality/85/&quot;) 2x);"></div>
															</div>
														</div></a>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 12px;">
													<a
														href="/web/campaign/detail/169898?_refer_section_st=coItemCurator_2"
														class="RecommendationCardDesktop_item__1n6Ae"><div
															class="RecommendationCardDesktop_contentContainer__mxIVf">
															<div class="RecommendationCardDesktop_projectName__1pkEQ"
																title="단독|연매출 40억! 3달 기다려 먹는 레전드 <사과떡볶이>의 신제품">단독|연매출
																40억! 3달 기다려 먹는 레전드 &lt;사과떡볶이&gt;의 신제품</div>
															<div class="RecommendationCardDesktop_description__2mUxw">
																<div class="RecommendationCardDesktop_rate__2d-I1">9999%</div>
																<div class="RecommendationCardDesktop_category__Yj-QH">푸드</div>
															</div>
														</div>
														<div
															class="RecommendationCardDesktop_thumbnailContainer__jBLTR">
															<div
																class="RecommendationCardDesktop_thumbnailPlaceholder__1mk2W"
																style="padding-top: calc(70% - 0px);">
																<div
																	class="RecommendationCardDesktop_thumbnail__2SkGD RecommendationCardDesktop_visible__3Bx9p"
																	style="background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1115/20221115104610338_169898.jpg/wadiz/resize/88/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1115/20221115104610338_169898.jpg/wadiz/resize/176/quality/85/&quot;) 2x);"></div>
															</div>
														</div></a>
												</div>
												<div aria-hidden="true"
													class="CardTable_itemContainer__1362c"
													style="width: calc(( 100% - 0px + 0px)- 0.01px); margin-left: 0px; margin-right: 0px; margin-bottom: 0px;">
													<a
														href="/web/campaign/detail/169393?_refer_section_st=coItemCurator_3"
														class="RecommendationCardDesktop_item__1n6Ae"><div
															class="RecommendationCardDesktop_contentContainer__mxIVf">
															<div class="RecommendationCardDesktop_projectName__1pkEQ"
																title="[전세계 단4명] 쇼파드-마스터퍼퓨머가 조향한 가장높은 레벨의 장미향">[전세계
																단4명] 쇼파드-마스터퍼퓨머가 조향한 가장높은 레벨의 장미향</div>
															<div class="RecommendationCardDesktop_description__2mUxw">
																<div class="RecommendationCardDesktop_rate__2d-I1">3827%</div>
																<div class="RecommendationCardDesktop_category__Yj-QH">뷰티</div>
															</div>
														</div>
														<div
															class="RecommendationCardDesktop_thumbnailContainer__jBLTR">
															<div
																class="RecommendationCardDesktop_thumbnailPlaceholder__1mk2W"
																style="padding-top: calc(70% - 0px);">
																<div
																	class="RecommendationCardDesktop_thumbnail__2SkGD RecommendationCardDesktop_visible__3Bx9p"
																	style="background-image: -webkit-image-set(url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1114/20221114164843488_169393.jpg/wadiz/resize/88/quality/85/&quot;) 1x, url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2022/1114/20221114164843488_169393.jpg/wadiz/resize/176/quality/85/&quot;) 2x);"></div>
															</div>
														</div></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- E : 인기 프로젝트 리스트 -->


						</div>
						<!-- E : 우측 캠페인 관련 정보 -->

						<!-- S : 캠페인 정보 -->
						<div class="wd-ui-sub-campaign-info-container">
							<div class="wd-ui-sub-campaign-info">
								<!-- S : 탭 주요 콘텐츠 -->
								<div class="wd-ui-tab-contents">


									<section class="wd-ui-tab-contents">
										<h3 class="text-hidden">프로젝트 스토리</h3>
										<!-- 이미지가 아닌 동영상 URL이 넘어오는 경우 iframe에 동영상을 보여줘야 함 -->
										<div class="view-slide-wrap" style="padding: 0">이미지~</div>





										<!-- S : 예약구매 중 글로벌/앵콜 일 경우 노출 -->

										<!-- E : 예약구매 중 글로벌/앵콜 일 경우 노출 -->

										<!-- S : campaign 컨텐츠 -->
										<div class="wd-ui-campaign-content">
											<div class="wd-ui-cont" style="padding-top: 24px;">
												<!-- S : 프로젝트 정보 -->
												<div class="project-state-info">
													<div class="state-box">
														<p class="achievement-rate"
															style="margin-bottom: 4px; color: #495057;">
															<strong>0</strong>% 달성
														</p>
														<p class="total-amount"
															style="margin-bottom: 4px; line-height: 30px; color: #495057;">
															<strong>0</strong>원 펀딩
														</p>
														<p class="total-supporter"
															style="margin-bottom: 6px; line-height: 30px; color: #495057;">
															<strong>0</strong>명의 서포터
														</p>
													</div>

													<div class="btn-wrap share">
														<div class="btn-wrap-flex">
															<button class="campaign-wish btn-wish">
																<i class="icon-wish"></i> <em class="count-wish">0</em>
															</button>
															<button class="campaign-message btn-message">
																<i class="chat-o icon" aria-hidden="true"></i>문의
															</button>
															<button class="campaign-share btn-share"
																onclick="wadiz.share.kakaoSdkInit();">공유하기</button>
														</div>
														<div id="shareSection" class="share-section">
															<ul class="share-list">
																<li><button
																		class="wz button dense icon-facebook circular"
																		onclick="wadiz.share.facebook();" title="페이스북 공유"
																		style="width: 36px; padding: 0"></button></li>
																<li><button
																		class="wz button dense icon-kakao circular"
																		onclick="wadiz.share.kakao();" title="카카오톡 공유"
																		style="width: 36px; padding: 0"></button></li>
																<li><button
																		class="wz button dense icon-twitter circular"
																		onclick="wadiz.share.twitter();" title="트위터 공유"
																		style="width: 36px; padding: 0"></button></li>
																<li><button
																		class="wz button dense icon-link circular"
																		onclick="wadiz.share.urlCopy();" title="URL 공유"
																		style="width: 36px; padding: 0"></button></li>
																<li><button
																		class="wz button dense icon-code circular"
																		onclick="window.open('/web/embed/reward/174982','_blank');"
																		title="임베드 공유" style="width: 36px; padding: 0"></button></li>
															</ul>
														</div>
													</div>

												</div>
												<!-- E : 프로젝트 정보 -->



												<!--S : 팔로우활동 정보  -->
												<div class="social-info mobile">
													<a href="/web/campaign/detailBacker/174982">
														<figure>
															<div class="profiles">
																<span style="background-image: url()"></span>
															</div>
															<figcaption>
																<p>
																	<strong></strong>
																</p>
															</figcaption>
														</figure> <span class="icon-chevron-right"> </span>
													</a>
												</div>
												<!--E : 팔로우활동 정보  -->
												<br>
												<!-- S : 펀딩 기간, 보상품 제공일 -->
												<div>
													<div
														style="padding: 16px; background: rgba(0, 196, 196, 0.1); border-radius: 8px;">
														<p
															style="color: #00b2b2; font-size: 13px; line-height: 20px; margin-bottom: 6px;">
															<strong>목표 금액</strong> <span>2,500,000원</span><br> <strong>펀딩
																기간</strong> <span>-2022.12.30</span><br>
														</p>


														<p
															style="color: #60656a; font-size: 12px; line-height: 18px;">
															100% 이상 모이면 펀딩이 성공되며, 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가
															진행되지 않습니다.</p>



													</div>
												</div>
												<!-- E : 펀딩 기간, 보상품 제공일 -->

												<!-- S : 펀딩 공지 배너 -->
												<section id="funding-banner-app" data-classification="NONE"
													data-is-hardware-category="false"
													data-is-donation-category="false"
													data-is-space-exhibition-use=""
													data-space-exhibition-status="">
													<div class="FundingBannerApp_spaceBox__flBxV"></div>
													<div
														class="KnowBanner_container__2ztI- PreOrderKonwBanner_icon__39FeM">
														<span>특별함이 담겨있는</span><strong>와디즈 프리오더 프로젝트란?</strong>
														<button class="KnowBanner_moreButton__3gFHi">자세히
															알아보기</button>
													</div>
												</section>
												<!-- E : 펀딩 공지 배너 -->

												<div id="reward-detail-news-up-list" class="news-up-list"
													data-campaign-id="174982" style="display: none;"></div>
												<!-- S : 프로젝트 내용 -->
												<div id="introdetails" style="height: auto;" class="story">
													<strong class="title">프로젝트 스토리</strong>
													<!-- 펀딩 상세 내 공지 배너 -->
													<div id="delivery-banner" data-section-code="RDN"></div>
													<div class="delivery-info">
														<i class="icon"></i>도서산간에 해당하는 서포터님은 배송 가능 여부를 반드시 메이커에게
														문의 후 펀딩에 참여해 주세요.
													</div>
													<div class="inner-contents fr-view">
														<h3>안녕하세요. 스토리 작성을 시작한 메이커님을 환영해요!</h3>
														<ul>
															<li><p>아래는 스토리를 쉽게 작성할 수 있도록 안내를 드리는 문구예요. 스토리를
																	어떻게 작성할지 고민이 된다면 참고해 보세요.</p></li>
															<li><p>
																	프로젝트 제출 이후, <strong><u>와디즈는 메이커님 대신 스토리를
																			작성해 드리지 않아요.</u></strong> 메이커님의 이야기를 생생하게 담고, 진심을 그대로 전하기 위함이니 이해해
																	주세요.
																</p></li>
															<li><p>
																	이 문구는 메이커님께만 비밀리에 보여 드리는 내용이에요. 문구가 그대로 상세 페이지에 노출되면
																	서포터님들이 당황할 수 있으니 <strong><u>문구를 다 읽었다면, 지워
																			주세요.</u></strong>
																</p></li>
														</ul>
														<p>
															<br>
														</p>
														<p>이제 안내 문구를 보면서 스토리를 하나씩 작성해 볼까요?</p>
														<p>
															<br>
														</p>
														<hr>
														<h3>
															<br>
														</h3>
														<h3>이 프로젝트를 준비하게 된 배경은요,</h3>
														<ul>
															<li>펀딩금을 모금하는 목적과, 제품이나 서비스를 준비하게 된 배경에 대해 설명해 주세요.</li>
														</ul>
														<p>
															<br>
														</p>
														<h3>이번에 선보이는 프로젝트는 이런 이야기를 가지고 있어요.</h3>
														<ul>
															<li>리워드의 사진을 보여 주며 설명해 주세요.</li>
															<li>프로젝트 혹은 준비한 제품이나 서비스의 차별점을 알려 주세요.</li>
															<li>핵심적인 3가지 내용 위주로 담는 것을 추천해요.</li>
														</ul>
														<p>
															<br>
														</p>
														<h3>안녕하세요, 서포터님들! 000 메이커입니다.</h3>
														<ul>
															<li>메이커님의 프로필 사진과 함께 소개해 주세요.</li>
														</ul>
														<p>
															<br>
														</p>
														<h3>크라우드펀딩, 특히 와디즈를 찾은 이유는</h3>
														<ul>
															<li>와디즈에서 프로젝트를 진행하는 이유와, 펀딩금 사용 계획을 들려 주세요.</li>
														</ul>
														<p>
															<br>
														</p>
														<h3>프로젝트 진행 기간 동안 아래의 이벤트/지지서명에 참여해 보세요.</h3>
														<ul>
															<li>준비한 이벤트가 있다면 서포터님들의 참여를 독려해 주세요!</li>
															<li>준비한 이벤트가 없다면 지지서명을 유도하는 문구를 넣어 보는 건 어떨까요? 지지서명으로
																메이커님의 프로젝트도 알릴 수도 있고, 최대 1,100 포인트도 제공하니 서포터님들께 참여를 독려해
																보세요!</li>
														</ul>
														<p>
															<br>
														</p>
														<p>프로젝트를 모두 작성했다면 [제출하기]를 눌러 주세요. 심사 담당자가 프로젝트를 확인한 뒤
															메일로 진행 상황을 공유할 거예요.</p>
													</div>
												</div>
												<!-- E : 프로젝트 내용 -->


											</div>
										</div>
										<!-- E : campaign 컨텐츠 -->
										<div class="banner-section-RB1"></div>
										<input type="hidden" id="movieembed" value="">
									</section>
								</div>

							</div>
							<!-- E : 탭 주요 콘텐츠 -->
						</div>
					</div>
					<!-- E : 캠페인 정보 -->
					<div class="banner-section-RB3">
						<div class="banner-pop">
							<div class="banner-pop-wrap">
								<div class="banner-pop-head">
									<button type="button" class="banner-pop-close icon-close"
										title="배너 닫기"></button>
								</div>
								<a
									href="https://www.wadiz.kr/web/wevent/firstfunding?_refer_section_st=RB3_0"
									class="banner-pop-link"> <img
									src="https://cdn.wadiz.kr/ft/images/green001/2022/0808/20220808181011326_3199.png/wadiz/quality/80"
									alt=" ">
								</a>
							</div>
						</div>
					</div>
				</div>

				<!-- E : 페이지 레이아웃 컨테이너 -->
			</div>
			<!-- E : 서브 컨텐트 영역 -->
		</div>

	</div>
	<!-- 맨끝 -->

</body>
</html>