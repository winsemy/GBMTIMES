package com.makeit.storehome;

import java.util.List;

import com.makeit.like.LikeVO;
import com.makeit.member.MemberVO;

public interface StorehomeService {
	List<StorehomeVO> getList(Paging vo);
	int likeUpdete(LikeVO vo);
	void likeDelete(LikeVO vo);
	List<LikeVO> findLike(String memberId);
	int findLikeCnt(LikeVO vo);
	List<StorehomeVO> getFoodList();
	StorehomeVO detail(StorehomeVO vo);
	StorehomeVO order(StorehomeVO vo);
	MemberVO member(String memberId);
	List<StorehomeVO> storeOption(String storeIdx);
	StorehomeVO storeOrder(String storeOtion);
	StorehomeVO orderinfo(StorehomeVO vo);
	void orderInsert(StorehomeVO vo);
	List<StorehomeVO> getFashionList();
	List<StorehomeVO> nowList();
	List<StorehomeVO> myorder(StorehomeVO vo);
	List<StorehomeVO> getTechList();
	List<StorehomeVO> getbeautyList();
	List<StorehomeVO> gettripList();
	List<StorehomeVO> getbabyList();
	List<StorehomeVO> getpetList();
	List<StorehomeVO> getlistPopular();
	List<StorehomeVO> getlistRecent();
	List<StorehomeVO> getlistSatisfaction();
	List<StorehomeVO> getfoodPopular();
	List<StorehomeVO> getfoodRecent();
	List<StorehomeVO> getfoodSatisfaction();
	List<StorehomeVO> gettechRecent();
	List<StorehomeVO> gettechSatisfaction();
	List<StorehomeVO> gettechPopular();
	List<StorehomeVO> getbeautyRecent();
	List<StorehomeVO> getbeautySatisfaction();
	List<StorehomeVO> getbeautyPopular();
	List<StorehomeVO> gettripRecent();
	List<StorehomeVO> gettripPopular();
	List<StorehomeVO> gettripSatisfaction();
	List<StorehomeVO> getbabyRecent();
	List<StorehomeVO> getbabySatisfaction();
	List<StorehomeVO> getbabyPopular();
	List<StorehomeVO> getpetRecent();
	List<StorehomeVO> getpetSatisfaction();
	List<StorehomeVO> getpetPopular();
	MemberVO storemember(String storeIdx);
	List<StorehomeVO> storeReview(String storeIdx);
	List<StorehomeVO> getfashionRecent();
	List<StorehomeVO> getfashionSatisfaction();
	List<StorehomeVO> getfashionPopular();
	List<StorehomeVO> bestfood();
	List<StorehomeVO> bestfashion();
	List<StorehomeVO> bestTect();
	List<StorehomeVO> bestbeauty();
	List<StorehomeVO> bestbaby();
	List<StorehomeVO> bestTrip();
	List<StorehomeVO> bestpet();
	int reviewIn(StorehomeVO vo);
	StorehomeVO reviewCnt(String storeIdx);
	List<StorehomeVO> getlistPopular1(StorehomeVO vo);
	List<StorehomeVO> getlistRecent1(StorehomeVO vo);
	List<StorehomeVO> getlistSatisfaction1(StorehomeVO vo);
	List<StorehomeVO> getList1(StorehomeVO vo);
	int storeTotal();
	List<StorehomeVO> qnaList(StorehomeVO vo);
	int qnaInsert(StorehomeVO vo);
	int qnaTotal(String qnaIdx);
	StorehomeVO qnaView(StorehomeVO vo);
	int qnamodify(StorehomeVO vo);
	int uphit(StorehomeVO vo);
	int reInsert(StorehomeVO vo);
	StorehomeVO qnaRe(StorehomeVO vo);
	int qnaDel(String qnaIdx);
	void update(StorehomeVO vo);
}
