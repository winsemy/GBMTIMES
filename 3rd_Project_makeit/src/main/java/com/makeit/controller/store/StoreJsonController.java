package com.makeit.controller.store;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.makeit.like.LikeVO;
import com.makeit.storehome.Paging;
import com.makeit.storehome.StorehomeService;
import com.makeit.storehome.StorehomeVO;

@RestController
public class StoreJsonController {
	
	@Autowired
	private StorehomeService storeService;
	
	public StoreJsonController() {
		System.out.println("StoreJsonController() 객체생성~!~1");
	}
	
	//좋아요 
	@RequestMapping("/storeLikeUpdate.do")
	public int storeLikeUpdate(@RequestBody LikeVO vo) {
		System.out.println("storeLikeUpdate vo :" + vo);
		if(storeService.findLikeCnt(vo) == 0) {
			System.out.println(storeService.findLikeCnt(vo));
			storeService.likeUpdete(vo);
			return 1;
		} else if (storeService.findLikeCnt(vo) != 0) {
			storeService.likeDelete(vo);
			return 2;
		}
		return 0;
	}
	
	//리뷰쓰기 
	@RequestMapping(value = "/reviewIn.do" ,method = RequestMethod.POST)
	public List<StorehomeVO> reviewIn(StorehomeVO vo) throws IllegalStateException, IOException {
		System.out.println("reviewIn StorehomeVO vo :" + vo);
		int insert;
		List<StorehomeVO> list = new ArrayList<StorehomeVO>();
		MultipartFile upload = vo.getUploadFile();
		if(!upload.isEmpty()) {
			System.out.println("not null~!~!~!");
			upload.transferTo(new File("C:/mystudy/70_Spring/3rd_Project_makeit-1129/src/main/webapp/img/store-img/" + upload.getOriginalFilename()));
			vo.setStoreReviewImg(upload.getOriginalFilename());
			insert = storeService.reviewIn(vo);
			if(insert == 1) {
				list = storeService.storeReview(vo.getStoreIdx());
			} else if(insert == 0){
			}
		}
		System.out.println("list!@!@!@!@!@ : " + list);
		System.out.println("upload StorehomeVO vo :" + vo);
		return list;
	}
	
	//베스트 카테고리
	//전체
	@RequestMapping("/bestnow.do")
	public List<StorehomeVO> nowall(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.nowList();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//푸드
	@RequestMapping("/bestfood.do")
	public List<StorehomeVO> nowfood(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestfood();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//패션ㅁ잡화
	@RequestMapping("/bestfashion.do")
	public List<StorehomeVO> bestfashion(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestfashion();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//테크
	@RequestMapping("/bestTect.do")
	public List<StorehomeVO> bestTect(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestTect();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//뷰티
	@RequestMapping("/bestbeauty.do")
	public List<StorehomeVO> bestbeauty(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestbeauty();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//베이비
	@RequestMapping("/bestbaby.do")
	public List<StorehomeVO> bestbaby(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestbaby();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//여행
	@RequestMapping("/bestTrip.do")
	public List<StorehomeVO> bestTrip(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestTrip();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	//반려동물
	@RequestMapping("/bestpet.do")
	public List<StorehomeVO> bestpet(){
		System.out.println("??????????");
		List<StorehomeVO> nowall = storeService.bestpet();
		System.out.println("nowall : " + nowall);
		return nowall;
	}
	
	@RequestMapping("/storejson.do")
	public Map<String,Object> getList(String order, String cPage){
		Paging vo  = new Paging();
		System.out.println("cPage : " + cPage);
		
		vo.setTotalRecord(storeService.storeTotal());
		vo.setTotalPage();
		System.out.println(">전체 게시글 수 확인 : " + vo.getTotalRecord());
		System.out.println(">전체 페이지 수 확인 : " + vo.getTotalPage());
		
		//현재페이지 구하기
		if(cPage != null){
			vo.setNowPage(Integer.parseInt(cPage));
		}
		System.out.println("> cPage : " + cPage);
		System.out.println("> paging nowPage : " + vo.getNowPage());
		
		// 3. 현재 페이지 표시할 게시글 시작번호(begin) 끝번호(end) 구하기
		vo.setEnd(vo.getNowPage() * vo.getNumPerPage());
		vo.setBegin(vo.getEnd() - vo.getNumPerPage() + 1);
		
		// 3-1. 끝 번호가 건수보다 많으면 -> 끝번호 = 건수 로 처리
		if (vo.getEnd() > vo.getTotalRecord()) vo.setEnd(vo.getTotalRecord());
		
		System.out.println(">> 시작번호(begin) : " + vo.getBegin());
		System.out.println(">> 끝번호(end) : " + vo.getEnd());
		
		// ------블록(block) 계산하기 ---------------------------
			// 4. 블록의 시작 페이지, 끝 페이지 구하기 (우리가 쓸 수 있는 것은 현제페이지 번호)
		int nowPage = vo.getNowPage();
		int beginPage = (nowPage - 1) / vo.getNumPerBlock() *vo.getNumPerBlock() + 1;
		vo.setBeginPage(beginPage);
		vo.setEndPage(beginPage + vo.getNumPerBlock() -1);
		
		// 끝페이지(endPage)가 전체 페이지 수 (totalPage)보다 크면 -> 끝페이지 = 전체페이지수
		if (vo.getEndPage() > vo.getTotalPage()) vo.setEndPage(vo.getTotalPage());
		
		System.out.println("> beginPage : " + vo.getBeginPage());
		System.out.println("> endPage : " + vo.getEndPage());
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(order == null) {
			List<StorehomeVO> getlist = storeService.getList(vo);
			System.out.println(getlist);
			map.put("getlist", getlist);
			System.out.println("getlist : " + getlist);
			map.put("vo", vo);
		} else if(order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getlistRecent();
			System.out.println(getlist);
			map.put("getlist", getlist);
			map.put("vo", vo);
		} else if(order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getlistSatisfaction();
			System.out.println(getlist);
			map.put("getlist", getlist);
			map.put("vo", vo);
		} else {
			List<StorehomeVO> getlist =  storeService.getlistPopular();
			System.out.println(getlist);
			map.put("getlist", getlist);
			map.put("vo", vo);
		
		}
		
		System.out.println("map : " + map);
		return map;
		
	}
	@RequestMapping("/storejson1.do")
	public List<StorehomeVO> storeList(StorehomeVO vo, String order, String cPage){
		vo.setTotalRecord(storeService.storeTotal());
		vo.setTotalPage();
		System.out.println(">전체 게시글 수 확인 : " + vo.getTotalRecord());
		System.out.println(">전체 페이지 수 확인 : " + vo.getTotalPage());
		
		//현재페이지 구하기
		if(cPage != null){
			vo.setNowPage(Integer.parseInt(cPage));
		}
		System.out.println("> cPage : " + cPage);
		System.out.println("> paging nowPage : " + vo.getNowPage());
		
		// 3. 현재 페이지 표시할 게시글 시작번호(begin) 끝번호(end) 구하기
		vo.setEnd(vo.getNowPage() * vo.getNumPerPage());
		vo.setBegin(vo.getEnd() - vo.getNumPerPage() + 1);
		
		// 3-1. 끝 번호가 건수보다 많으면 -> 끝번호 = 건수 로 처리
		if (vo.getEnd() > vo.getTotalRecord()) vo.setEnd(vo.getTotalRecord());
		
		System.out.println(">> 시작번호(begin) : " + vo.getBegin());
		System.out.println(">> 끝번호(end) : " + vo.getEnd());
		
		// ------블록(block) 계산하기 ---------------------------
			// 4. 블록의 시작 페이지, 끝 페이지 구하기 (우리가 쓸 수 있는 것은 현제페이지 번호)
		int nowPage = vo.getNowPage();
		int beginPage = (nowPage - 1) / vo.getNumPerBlock() *vo.getNumPerBlock() + 1;
		vo.setBeginPage(beginPage);
		vo.setEndPage(beginPage + vo.getNumPerBlock() -1);
		
		// 끝페이지(endPage)가 전체 페이지 수 (totalPage)보다 크면 -> 끝페이지 = 전체페이지수
		if (vo.getEndPage() > vo.getTotalPage()) vo.setEndPage(vo.getTotalPage());
		
		System.out.println("> beginPage : " + vo.getBeginPage());
		System.out.println("> endPage : " + vo.getEndPage());
		
		//데이터 가져오기
		System.out.println("vo : " + vo);
		System.out.println("order : " + order + " category: " + vo);
		if(order == null) {
			List<StorehomeVO> getlist = storeService.getList1(vo);
			System.out.println(getlist);
			return getlist;
		} else if(order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getlistRecent1(vo);
			System.out.println(getlist);
			return getlist;
		} else if(order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getlistSatisfaction1(vo);
			System.out.println(getlist);
			return getlist;
		} else{
			List<StorehomeVO> getlist =  storeService.getlistPopular1(vo);
			System.out.println(getlist);
			return getlist;
		}
		
	}
	
	@RequestMapping("/fashion.do")
	public List<StorehomeVO> fashion(String order){
		if(order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.getFashionList();
			System.out.println(getlist);
			return getlist;
		} else if(order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getfashionRecent();
			return getlist;
		} else if(order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getfashionSatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist =  storeService.getfashionPopular();
			return getlist;
		}
	}
	@RequestMapping("/food.do")
	public List<StorehomeVO> getFoodList(String order){
		System.out.println("order : " + order);
		if(order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.getFoodList();
			System.out.println("getLsit!@!@!@" + getlist);
			return getlist;
		} else if(order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getfoodRecent();
			return getlist;
		} else if(order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getfoodSatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist =  storeService.getfoodPopular();
			return getlist;
		}
	}
	
	@RequestMapping("/tech.do")
	public List<StorehomeVO> getTechList(String order){
		System.out.println("order : " + order);
		if(order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.getTechList();
			System.out.println(getlist);
			return getlist;
		} else if(order.equals("c")) {
			List<StorehomeVO> getlist = storeService.gettechRecent();
			return getlist;
		} else if(order.equals("s")) {
			List<StorehomeVO> getlist = storeService.gettechSatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist =  storeService.gettechPopular();
			return getlist;
		}
	}
	@RequestMapping("/beauty.do")
	public List<StorehomeVO> getbeautyList(String order){
		
		System.out.println("order : " + order);
		if(order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.getbeautyList();
			System.out.println(getlist);
			return getlist;
		} else if(order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getbeautyRecent();
			return getlist;
		} else if(order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getbeautySatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist =  storeService.getbeautyPopular();
			return getlist;
		}
	}
	@RequestMapping("/trip.do")
	public List<StorehomeVO> gettripList(String order) {
		System.out.println("order : " + order);
		if (order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.gettripList();
			System.out.println(getlist);
			return getlist;
		} else if (order.equals("c")) {
			List<StorehomeVO> getlist = storeService.gettripRecent();
			return getlist;
		} else if (order.equals("s")) {
			List<StorehomeVO> getlist = storeService.gettripSatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist = storeService.gettripPopular();
			return getlist;
		}
	}

	@RequestMapping("/baby.do")
	public List<StorehomeVO> getbabyList(String order){
		System.out.println("order : " + order);
		if (order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.getbabyList();
			System.out.println(getlist);
			return getlist;
		} else if (order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getbabyRecent();
			return getlist;
		} else if (order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getbabySatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist = storeService.getbabyPopular();
			return getlist;
		}
	}
	@RequestMapping("/pet.do")
	public List<StorehomeVO> getpetList(String order){
		System.out.println("order : " + order);
		if (order == null) {
			System.out.println("!!!!!!!");
			List<StorehomeVO> getlist = storeService.getpetList();
			System.out.println(getlist);
			return getlist;
		} else if (order.equals("c")) {
			List<StorehomeVO> getlist = storeService.getpetRecent();
			return getlist;
		} else if (order.equals("s")) {
			List<StorehomeVO> getlist = storeService.getpetSatisfaction();
			return getlist;
		} else {
			List<StorehomeVO> getlist = storeService.getpetPopular();
			return getlist;
		}
	}
	
	@RequestMapping("/orderDtail.do")
	public String orderDtail(@RequestBody StorehomeVO vo, Model model) {
		System.out.println("orderdtail vo : " + vo);
		storeService.orderInsert(vo);
		StorehomeVO orderinfo = storeService.orderinfo(vo);
		System.out.println("orderinfo : " + orderinfo);
		model.addAttribute("orderinfo",orderinfo);
		return "store/StoreHome";
		
	}
	
	
}
