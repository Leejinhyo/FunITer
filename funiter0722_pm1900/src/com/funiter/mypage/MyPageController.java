package com.funiter.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.mybatis.ISellDAO;
import com.test.mybatis.NM_OrderDTO;

@Controller
public class MyPageController
{

	//사용자 처리 세션 만들것 !! ★
	
	@Autowired
	private SqlSession SqlSession;
	
	@RequestMapping(value="mypage.action", method=RequestMethod.GET)
	public String main(HttpServletRequest req,Model model)
	{
		String url = null;
		
		ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
		
		HttpSession session =  req.getSession();
		if (session.getAttribute("user_code")==null)
		{
			url = "WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
		}
		else 	//회원이라면, 
		{	
			//model.addAttribute("", .());
			url = "WEB-INF/view/u_my_main.jsp";
		}
		
		return "";
	}
	
	// 관리자 알람내역
	@RequestMapping(value="u_my_a_alarm.action", method=RequestMethod.GET)
	public String uAlarm(HttpServletRequest req , Model model)
	{
		return "WEB-INF/view/u_my_a_alarm.jsp";
	}
	
	//판매내역
	@RequestMapping(value="u_my_b_selllist.action", method=RequestMethod.GET)
	public String uMybSelllist(HttpServletRequest req,Model model)
	{
		//기본 세션 처리 
		HttpSession session = req.getSession();
		
		if (session.getAttribute("user_code")==null)
		{
			return "WEB-INF/view/user_login.jsp";
		}
		else
		{
			//나의 판매내역 꺼내오는 자료구조. 
			ISellListDAO sell_dao = SqlSession.getMapper(ISellListDAO.class);
			ArrayList<SellListDTO> selllist_dto = new ArrayList<SellListDTO>();
			selllist_dto = sell_dao.lists(Integer.parseInt(String.valueOf(session.getAttribute("user_code"))));
			
			//유저 코드가 같을 때의 판매내역 꺼내오기.
			model.addAttribute("selllist_dto",selllist_dto);
			
			int check=0;
			//만약 데이터가 없다면, 
			if (selllist_dto.size()==0)
			{
				check=1;
			}
			model.addAttribute("check", check);
		
			//만약, 예약판매라면, 
			for (SellListDTO sellListDTO : selllist_dto)
			{
				System.out.println(sellListDTO.getBook_start_d());
				//예약일이 없는거라면.
				if (sellListDTO.getBook_start_d().equals("0001-01-01"))
				{
					sellListDTO.setBook_start_d(null);
					sellListDTO.setBook_end_d(null);
				}
			}
			
			
			
			return "WEB-INF/view/u_my_b_selllist.jsp";
		}
	}
	
	//구매내역
	@RequestMapping(value="u_my_b_buylist.action" , method=RequestMethod.GET)
	public String uMybBuylist(HttpServletRequest req, Model model)
	{
		//기본 세션 처리 
		HttpSession session = req.getSession();
		
		if (session.getAttribute("user_code")==null)
		{
			return "WEB-INF/view/user_login.jsp";
		}
		else
		{
			//나의 구매내역 꺼내오는 자료구조. 
			IBuyListDAO buy_dao = SqlSession.getMapper(IBuyListDAO.class);
			ArrayList<BuyListDTO> buylist_dto = new ArrayList<BuyListDTO>();
			
			buylist_dto =buy_dao.lists(Integer.parseInt(String.valueOf(session.getAttribute("user_code"))));
			
			//유저 코드가 같을 때의 구매내역 꺼내오기.
			model.addAttribute("buylist_dto",buylist_dto);
			
			int check=0;
			//만약 데이터가 없다면, 
			if (buylist_dto.size()==0)
			{
				check=1;
			}
			model.addAttribute("check", check);
			
			for (BuyListDTO buyListDTO : buylist_dto)
			{
				System.out.println(buyListDTO.getBooked_d());
			}
			
			//여기서 나의 구매내역 확인하는데, 입금일이 지났으면, disabled 하게 할 것.
			int limit_day=0;
			for (BuyListDTO buyListDTO : buylist_dto)
			{
				//일일히, 얘네 꺼내오면서 check 가 0인지 1인지 볼 것. 
				limit_day = buy_dao.getday(buyListDTO.getNm_article_code());
				if (limit_day==1)	//현재, 그 기간이 더 길면 입금가능인데, 아니면 입금불가임
				{
					//즉, 조회되는게 없다면, 입금불가임. 
					buyListDTO.setLimit_day(limit_day);	//1이면 이제 못하는거야. 
					//그러면, limit_day를 1로 설정하자. 
				}
				else
					buyListDTO.setLimit_day(limit_day);	//1이면 이제 못하는거야.
				
				System.out.println(limit_day);
			}
			
			return "WEB-INF/view/u_my_b_buylist.jsp";
		}

	}
	/*
	//마이페이지에서 [입금] 눌렀을 시 
	@RequestMapping(value="u_my_b_buylist.action" , method=RequestMethod.GET)
	public String uMybBuylist(HttpServletRequest req, Model model)
	{
		//기본 세션 처리 
		HttpSession session = req.getSession();
		
		if (session.getAttribute("user_code")==null)
		{
			return "WEB-INF/view/user_login.jsp";
		}
		else
		{
			//나의 구매내역 꺼내오는 자료구조. 
			IBuyListDAO buy_dao = SqlSession.getMapper(IBuyListDAO.class);
			ArrayList<BuyListDTO> buylist_dto = new ArrayList<BuyListDTO>();
			//NM_OrderDTO order_dto = new NM_OrderDTO();
			//order_dto.setUser_code(Integer.parseInt(String.valueOf(session.getAttribute("user_code"))));
			//order_dto.setNm_article_code(Integer.parseInt(req.getParameter("nm_article_code")));
			
			buylist_dto =buy_dao.lists(Integer.parseInt(String.valueOf(session.getAttribute("user_code"))));
			
			//유저 코드가 같을 때의 구매내역 꺼내오기.
			model.addAttribute("buylist_dto",buylist_dto);
			
			int check=0;
			//만약 데이터가 없다면, 
			if (buylist_dto.size()==0)
			{
				check=1;
			}
			model.addAttribute("check", check);
			
			for (BuyListDTO buyListDTO : buylist_dto)
			{
				System.out.println(buyListDTO.getBooked_d());
			}
			return "WEB-INF/view/u_my_b_buylist.jsp";
		}

	}

	*/
	
	
	
	//나의 거래중 신고한 내역
	@RequestMapping(value="/u_my_b_claimlist.action" , method=RequestMethod.GET)
	public String uMybClaimlist(HttpServletRequest req, Model model)
	{
		
		return "/WEB-INF/view/u_my_b_claimlist.jsp";
	}
	
	//구매취소 요청내역
	@RequestMapping(value="u_my_b_cancelreq.action" , method=RequestMethod.GET)
	public String uMybCancelreq(HttpServletRequest req , Model model)
	{
		
		return "WEB-INF/view/u_my_b_cancelreq.jsp";
	}
	
	//취소 모아보기
	@RequestMapping(value="u_my_b_cancel.action" , method=RequestMethod.GET)
	public String uMybCancel(HttpServletRequest req,Model model)
	{
		
		//구매취소 요청내역.jsp
		return "WEB-INF/view/u_my_b_cancel.jsp";
	}
	
	
	//신청내역
	@RequestMapping(value="u_my_c_premlist1.action", method=RequestMethod.GET)
	public String uMyPremlist1(HttpServletRequest req, Model model)
	{
		
		
		return "WEB-INF/view/u_my_c_premlist1.jsp";
	}
	
	//판매내역
	@RequestMapping(value="u_my_c_premlist2.action", method=RequestMethod.GET)
	public String uMyPremlist2(HttpServletRequest rq, Model model)
	{
		
		
		return "WEB-INF/view/u_my_c_premlist2.jsp";
	}
	
	//구매내역
	@RequestMapping(value="u_my_c_premlist3.action", method=RequestMethod.GET)
	public String uMyPremlist3(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_c_premlist3.jsp";
	}
	
	// 나의 나눔한 내역
	@RequestMapping(value="u_my_d_freelist1.action" , method= RequestMethod.GET)
	public String uMydFreelist1(HttpServletRequest req , Model model)
	{
		
		return "WEB-INF/view/u_my_d_freelist1.jsp";
	}
	
	//나의 나눔받은 내역
	@RequestMapping(value="/u_my_d_freelist2.action" , method= RequestMethod.GET)
	public String uMydFreelist2(HttpServletRequest req , Model model)
	{
		
		return "/WEB-INF/view/u_my_d_freelist2.jsp";
	}
	
	// 무료나눔 보증금 환급 내역
	@RequestMapping(value="u_my_d_freelist3.action" , method= RequestMethod.GET)
	public String uMydFreelist3(HttpServletRequest req , Model model)
	{
		
		return "WEB-INF/view/u_my_d_freelist3.jsp";
	}
	
		
	//수신쪽지함
	@RequestMapping(value="u_my_e_profile1.action" , method= RequestMethod.GET)
	public String uMyeProfile1(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_e_profile1.jsp";
	}
	
	//송신쪽지함
	@RequestMapping(value="u_my_e_profile2.action" , method= RequestMethod.GET)
	public String uMyeProfile2(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_e_profile2.jsp";
	}
	
	//개인정보 수정
	@RequestMapping(value="u_my_e_profile3.action" , method= RequestMethod.GET)
	public String uMyeProfile3(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_e_profile3.jsp";
	}

	//개인정보 수정
	@RequestMapping(value="u_my_e_profile4.action" , method= RequestMethod.GET)
	public String uMyeProfile4(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_e_profile4.jsp";
	}

	
	//문의내역 
	@RequestMapping(value="u_my_f_ans1.action" , method=RequestMethod.GET)
	public String uMyfans1(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_f_ans1.jsp";
	}
	
	//신고내역
	@RequestMapping(value="u_my_f_ans2.action" , method=RequestMethod.GET)
	public String uMyfans2(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_f_ans2.jsp";
	}
	
	//북마크내역
	@RequestMapping(value="u_my_g_book.action", method=RequestMethod.GET)
	public String uMygBook(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_g_book.jsp";
	}
	
	//취소한 내역 종합
	@RequestMapping(value="u_my_b_cancellist1.action", method=RequestMethod.GET)
	public String uMybCancellist1(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_b_cancellist1.jsp";
	}
	
	//취소한 내역 예약
	@RequestMapping(value="u_my_b_cancellist2.action", method=RequestMethod.GET)
	public String uMybCancellist2(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_b_cancellist2.jsp";
	}
	
	// 판매취소된 내역
	@RequestMapping(value="u_my_b_cancellist3.action", method=RequestMethod.GET)
	public String uMybCancellist3(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_b_cancellist3.jsp";
	}
	
	// 구매취소된 내역
	@RequestMapping(value="u_my_b_cancellist4.action", method=RequestMethod.GET)
	public String uMybCancellist4(HttpServletRequest req, Model model)
	{
		
		return "WEB-INF/view/u_my_b_cancellist4.jsp";
	}
	
	
	
}
