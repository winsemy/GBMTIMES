package com.makeit.controller.fund;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.makeit.fund.FundService;
import com.makeit.fund.FundVO;

//@Controller
//@RequestMapping("/board")
@RestController //클래스 내의 요청처리 결과가 모두 ResponseBody로 처리됨
public class FundAjaxController {
	@Autowired
	private FundService fundService;
	
	
	public FundAjaxController() {
		System.out.println(" =====> FundAjaxController() 객체생성 <===== ");
	}

	@RequestMapping("/fundLikeUpdate.do")
	   public int fundLikeUpdate(@RequestBody FundVO vo) {
	      System.out.println("fundLikeUpdate vo :" + vo);
	      if(fundService.fundLikeCnt(vo) == 0) {
	         System.out.println(fundService.fundLikeCnt(vo));
	         fundService.fundLikeUpdate(vo);
	         return 1;
	      } else if (fundService.fundLikeCnt(vo) != 0) {
	    	  fundService.fundLikeDelete(vo);
	         return 2;
	      }
	      return 0;
	   }
		
}
