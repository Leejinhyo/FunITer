package com.test.mybatis;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class SellController
{

	@Autowired
	private SqlSession SqlSession;

	// ==========================일반상품 관련=========================
	// [일반상품] 탭 눌렀을 때 가도록.
	@RequestMapping(value = "/user_normal.action", method = RequestMethod.GET)
	public String nomal(Model model, HttpServletRequest req, HttpSession session)
	{
		ISellDAO dao = SqlSession.getMapper(ISellDAO.class);

		ArrayList<NormalListDTO> normal_list = dao.normal_list(); 
		String fileName=null;
		
		for (NormalListDTO dto : normal_list)
		{
			fileName=dto.getPic1();
			dto.setPic1("pds\\image\\"+fileName);
		}
		
		
		model.addAttribute("normal_list", normal_list);
		
		return "/WEB-INF/view/u_normal.jsp";

	}

	// [판매글 작성] 눌렀을 때, 비회원 이면 안되고, 회원일 땐 되고,
	// 이때, 대분류 값 넘겨줘야함.
	@RequestMapping(value = "/nm_register.action", method = RequestMethod.GET)
	public String nomal_register(HttpServletRequest req, Model model, HttpSession session)
	{
		String url = null;

		ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
		
		String user_code = String.valueOf(session.getAttribute("user_code"));
		
		ArrayList<L_cateDTO> dto = new ArrayList<L_cateDTO>();

		dto = sdao.l_list();

		// ★
		System.out.println("user_code : "+user_code);
		if (session.getAttribute("user_code") == null)
		{
			return "/WEB-INF/view/user_login.jsp"; // 일로 가면, 지금 비회원상태
		} 
		else // 회원이라면,
		{
			model.addAttribute("l_list", sdao.l_list());
			model.addAttribute("user_code", user_code);
			
			return "/WEB-INF/view/u_normal_register.jsp";
		}

	}

	// [게시글 내용] 일반게시글 내용 출력되는 화면
	@RequestMapping(value="nm_sell_form.action", method=RequestMethod.GET)
	public String normal_article(HttpServletRequest req, Model model)
	{
		//기본 세션처리. 
		ISellDAO dao = SqlSession.getMapper(ISellDAO.class);
		HttpSession session = req.getSession();
		String user_code = String.valueOf(session.getAttribute("user_code"));
		//int a = Integer.parseInt(user_code);
		String url="";
		
		if (session.getAttribute("user_code") == null)
		{
			return "/WEB-INF/view/user_login.jsp"; // 일로 가면, 지금 비회원상태
		}
		else // 회원이라면,
		{

			String nm_article_code 
				= req.getParameter("nm_article_code");

			//현재 누군가가 구매중이면, 구매하기 진행 못하게. 하는 쿼리문. 
			int nm_buy_whether = dao.nm_buy_whether(Integer.parseInt(nm_article_code));
			System.out.println(nm_buy_whether);
			model.addAttribute("nm_buy_whether", nm_buy_whether);
			
			NormalArticleContentDTO dto
				= dao.normal_article_content(nm_article_code);
			/*
			if(dto.getStart_d()==null || dto.getEnd_d()==null)
			{
				dto.setStart_d("항시 가능");
				dto.setEnd_d("0");
			}
			*/
			String fileName=dto.getPic1();
			dto.setPic1("pds\\image"+fileName);
			fileName=dto.getPic2();
			dto.setPic2("pds\\image"+fileName);
			fileName=dto.getPic3();
			dto.setPic3("pds\\image"+fileName);
			fileName=dto.getPic4();
			dto.setPic4("pds\\image"+fileName);
			
			model.addAttribute("dto", dto);
			model.addAttribute("nm_article_code",nm_article_code);
			
			return "/WEB-INF/view/u_normal_sell_form.jsp";
		}
		
	}
	
	// s_select.action?l_category_code
	// 이때, 소분류 값 넘겨줘야함.
	@RequestMapping(value = "/s_select.action", method = RequestMethod.GET)
	public String s_select(HttpServletRequest req, Model model)
	{
		String url = null;
		HttpSession session = req.getSession();
		ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);

		ArrayList<S_cateDTO> dto = new ArrayList<S_cateDTO>();

		int l_category_code = Integer.parseInt(req.getParameter("l_category_code"));

		dto = sdao.s_list(l_category_code);

		if (session.getAttribute("user_code") == null)
		{
			return "/WEB-INF/view/user_login.jsp"; // 일로 가면, 지금 비회원상태
		} else // 회원이라면,
		{
			model.addAttribute("s_list", sdao.s_list(l_category_code));

			return "/WEB-INF/view/ajax.jsp";
		}
	}

	// s_select.action?l_category_code
	// 이때, 옵션 값 넘겨줘야함.
	@RequestMapping(value = "/filter.action", method = RequestMethod.GET)
	public String filter(HttpServletRequest req, Model model)
	{
		String url = null;

		ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);

		ArrayList<Option1DTO> dto1 = new ArrayList<Option1DTO>();
		ArrayList<Option2DTO> dto2 = new ArrayList<Option2DTO>();

		int s_category_code = Integer.parseInt(req.getParameter("s_category_code"));

		dto1 = sdao.filter1(s_category_code);
		dto2 = sdao.filter2(s_category_code);

		HttpSession session = req.getSession();
		if (session.getAttribute("user_code") == null)
		{
			return "/WEB-INF/view/user_login.jsp"; // 일로 가면, 지금 비회원상태
		} else // 회원이라면,
		{	
			model.addAttribute("option1", sdao.filter1(s_category_code));
			model.addAttribute("option2", sdao.filter2(s_category_code));
			return "/WEB-INF/view/ajax2.jsp";
		}
	}
		//게시글 등록 액션. 
	   @RequestMapping(value = "/normal_register_ok.action", method = RequestMethod.POST)
	   public String normal_register_ok(NormalRegistDTO dto, Model model
	         , HttpSession session, HttpServletRequest req) throws IOException
	   {
	      String url = null;
	      ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
	      
	      dto.setUser_code(String.valueOf(session.getAttribute("user_code")));
	      if (session.getAttribute("user_code") == null)
	         return "/WEB-INF/view/user_login.jsp";
	      else
	      {
	      // ========================== 파일업로드 부분
	      // 실제 저장경로
	      String root = session.getServletContext().getRealPath("/");
	      // 경로
	      String savePath = root + "pds" + File.separator + "image";
	      savePath += "\\";
	      File dir = new File(savePath);

	      if (!dir.exists())
	         dir.mkdirs();

	      String encType = "utf-8";
	      int maxFileSize = 5 * 1024 * 1024;
	      MultipartRequest multi = null;

	      multi = new MultipartRequest(req, savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
	      
	      String start_d = multi.getParameter("start_date");
	      String end_date = multi.getParameter("end_date");
	      
	      System.out.println(start_d);
	      System.out.println(end_date);
	      
	      // 예약 아닐시
	      if (start_d==null || end_date==null)
	      {   
	         start_d="0001-01-01";
	         end_date="0001-01-01";
	      }
	      
	      dto.setType(req.getParameter("type"));
	      
	      System.out.println(multi.getParameter("nm_pic1"));
	      
	      dto.setNm_subject(multi.getParameter("nm_subject"));
	      dto.setNm_price(multi.getParameter("nm_price"));
	      dto.setNm_size(multi.getParameter("nm_size"));
	      dto.setStart_date(start_d);
	      dto.setEnd_date(end_date);
	      dto.setNm_pic1(multi.getParameter("nm_pic1"));
	      dto.setNm_pic2(multi.getParameter("nm_pic2"));
	      dto.setNm_pic3(multi.getParameter("nm_pic3"));
	      dto.setNm_pic4(multi.getParameter("nm_pic4"));
	      dto.setNm_size(multi.getParameter("nm_size"));
	      dto.setNm_content(multi.getParameter("nm_content"));
	      dto.setL_cate(multi.getParameter("l_cate"));
	      dto.setS_cate(multi.getParameter("s_cate"));
	      dto.setOption1(multi.getParameter("option1"));
	      dto.setOption2(multi.getParameter("option2"));
	      
	      String picName = null;
	      
	      // dto 에 있는 nm_pic1 ~ 4 까지 파일 경로 삽입^___^
	      picName = multi.getFilesystemName("nm_pic1");
	      dto.setNm_pic1(savePath + picName);

	      picName = multi.getFilesystemName("nm_pic2");
	      dto.setNm_pic2(savePath + picName);

	      picName = multi.getFilesystemName("nm_pic3");
	      dto.setNm_pic3(savePath + picName);
	      
	      picName = multi.getFilesystemName("nm_pic4");
	      dto.setNm_pic4(savePath + picName);
	      
	      sdao.normal_insert(dto);
	      
	      return "redirect:user_normal.action";
	      }

	   }
	
	   //※ [구매하기] 버튼 클릭 시 , 이동하는 페이지. 
		// 구매할 때, 비회원 이면 안되고, 회원일 땐 되고,
		// 내용 출력해줘야함.  + 그 내역 가져오기 + 댓글, 북마크도 추가 
		@RequestMapping(value="/nm_buy_form.action", method=RequestMethod.GET)
		public String nm_buyform(HttpServletRequest req, Model model) throws ParseException
		{
			String url = null;
			HttpSession session =  req.getSession();
			ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
			
			//==========================기본 세션 처리. 
			if (session.getAttribute("user_code")==null)
			{
				System.out.println("유저코드가 없다");
				return "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
			}
			else			//회원이라면, 
			{	
				
				
				String str = "";
				int user_code = Integer.parseInt(req.getParameter("user_code"));
				//System.out.println("판매자의 코드 : " + user_code);
				//System.out.println("구매자의 코드 : " + session.getAttribute("user_code"));
				
				String nm_article_code = req.getParameter("nm_article_code");
				System.out.println(nm_article_code);
				
				//1) 판매자가 지금 나인지 확인.
				if (Integer.parseInt(String.valueOf(session.getAttribute("user_code")))==user_code)
				{
					//현재 나인거
					str = "본인이 작성한 게시물은 구매할 수 없습니다!";
					model.addAttribute("check", 1);	//jsp 에서 if check==1이면, str 띄우기. 
					model.addAttribute("str", str);
					model.addAttribute("nm_article_code", nm_article_code);
					url = "/WEB-INF/view/u_normal_buy_form.jsp";
					
				}
				else	//구매자 정보 가져와서 뿌려주기 및 판매자의 정보 뿌려주기 각각 다른 형태로 담자. 
				{
				//판매게시글 정보 가져오기.
				NormalArticleContentDTO nm_dto = new NormalArticleContentDTO();
				 
				nm_dto = sdao.normal_article_content(nm_article_code);
				//아티클 정보 넘겨주면, 데이터 뿌려주기. 
				
				SimpleDateFormat  formatter04 = new SimpleDateFormat("yyyy-MM-dd");
				Date s = formatter04.parse(nm_dto.getStart_d());
				Date e = formatter04.parse(nm_dto.getEnd_d());
				long diff = e.getTime() - s.getTime();
				long minus = diff / (24 * 60 * 60 * 1000);
				
				String todate04 =  formatter04.format(new Date());
				Date todate_date =  formatter04.parse(todate04);
				long s_day = s.getTime() - todate_date.getTime();
				long s_day2 = s_day / (24 * 60 * 60 * 1000);
			
				
				model.addAttribute("s_day2", s_day2);
				model.addAttribute("minus", minus);
				//※ 그냥 넘겨주기전에, user_code 를 seller 로 넘겨주는 메소드 
				IUserDAO u_dao = SqlSession.getMapper(IUserDAO.class);
				model.addAttribute("seller",u_dao.getInfo(Integer.parseInt(nm_dto.getUser_code())));
				
				int day = 0;
				// 예약 아닐시
			      if (nm_dto.getStart_d().equals("0001-01-01"))
			      {   
			    	  day = 1;
			          //nm_dto.setStart_d(null);
			          //nm_dto.setEnd_d(null);
			      }
			     
			      model.addAttribute("day", day);
				
				model.addAttribute("nm_dto",nm_dto);
				
				//은행 띄워주기==================
				ArrayList<BankDTO> bank_dto = new ArrayList<BankDTO>();
				IBankDAO ibankdao = SqlSession.getMapper(IBankDAO.class);
				bank_dto = ibankdao.list();
				model.addAttribute("bank_dto", bank_dto);
				//============================은행띄워주기
				
				//배달방법 띄워주기=================================
				ArrayList<DwayDTO> dway_dto = new ArrayList<DwayDTO>();
				IDwayDAO idwaydao = SqlSession.getMapper(IDwayDAO.class);
				dway_dto = idwaydao.lists();
				model.addAttribute("dway_dto", dway_dto);
				
				for (DwayDTO dwayDTO : dway_dto)
				{
					System.out.println(dwayDTO.getDel_way_name()); 
				}
				
				//=================================배달방법 띄워주기
					
			
				model.addAttribute("check", 0);	//jsp 에서 if check==1이면, str 띄우기.
				IUserDAO udao = SqlSession.getMapper(IUserDAO.class);
				UserDTO dto = new UserDTO();
				
				//판매자 dto =idao.getInfo(req.getParameter("user_code");
				
				//구매자 dto = idao.getInfo(session.getAttribute("user_code"));
				
				model.addAttribute("buyer", udao.getInfo(Integer.parseInt(String.valueOf(session.getAttribute("user_code")))));
				//여기까지는 정보고, 내용 가져오기.
				//판매상품명, 게시글 번호. 지금 article_code 살아있으니까 form 으로 제출해가지고. 그글의 내용들 가져오기.
				
				}
				return "/WEB-INF/view/u_normal_buy_form.jsp";

				}
			
		}
		
		//※ 진짜 구매하기 버튼 클릭 시 , 이동하는 페이지. 
		// 구매할 때, 확인하는 페이지 이며, 은행코드에 맞는 계좌, 입금해야하는 기간 뿌려주기. 
		// 내용 출력해줘야함.  + 그 내역 가져오기 + 댓글, 북마크도 추가 
		@RequestMapping(value="/nm_buy_form_ok.action", method=RequestMethod.POST)
		public String nm_buyform_ok(HttpServletRequest req, Model model, NM_OrderDTO dto, HttpSession session, BankDTO bdto)
		{
			if (session.getAttribute("user_code")==null)
			{
				return "redirect:login.action";
			}
			//=================================배달방법 띄워주기
			
			//은행 코드 통해서 계좌 띄워주기==================
			IBankDAO ibankdao = SqlSession.getMapper(IBankDAO.class);
			
			Create_AccountDTO account_dto =  ibankdao.getAccount(dto.getBank_code());
			//계좌정보 반환하는 메소드. 
			//뱅크코드 넘겨줄 때, 해당 계좌번호, 은행명 , crt 코드 가져오기.
			dto.setAccount_crt_code(account_dto.getAccount_crt_code());
			
			model.addAttribute("account_dto", account_dto);
			//============================은행띄워주기
			
			System.out.println("은행코드 : " + dto.getBank_code());
			System.out.println("게시글번호 : " + dto.getNm_article_code());
			System.out.println("무통장 발급번호 : " + dto.getAccount_crt_code());
			
			
			dto.setUser_code(Integer.parseInt(String.valueOf(session.getAttribute("user_code"))));
			ISellDAO dao = SqlSession.getMapper(ISellDAO.class);
			System.out.println("유저코드 : " + dto.getUser_code());
			if (dto.getBooked_d().equals("0"))
			{
				dto.setBooked_d("0001-01-01");
			}
			
			dao.nm_order_insert(dto);
			
			return "/WEB-INF/view/u_normal_buy_form_ok.jsp";
			
			
			
			/*String url = null;
			HttpSession session =  req.getSession();
			
			
			//==========================기본 세션 처리. 
			if (session.getAttribute("user_code")==null)
			{
				System.out.println("유저코드가 없다");
				return "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
			}
			else			//회원이라면, 
			{	
				//판매게시글 정보 가져오기.
				NormalArticleContentDTO nm_dto = new NormalArticleContentDTO();
				ISellDAO sdao = SqlSession.getMapper(ISellDAO.class); 
				String nm_article_code = req.getParameter("nm_article_code");
				nm_dto = sdao.normal_article_content(nm_article_code);
				//아티클 정보 넘겨주면, 데이터 뿌려주기. 
				
				String str = "";
				int seller_code = Integer.parseInt(req.getParameter("seller")); //판매자 코드
				int buyer_code = Integer.parseInt(req.getParameter("buyer")); // 구매자 코드
				
				IUserDAO udao = SqlSession.getMapper(IUserDAO.class);
				//UserDTO dto = new UserDTO();
				model.addAttribute("seller", udao.getInfo(seller_code));
				
				
				//============구매자가 주소, 상세주소 변경했을 시, 그 값 입력하는 코드
				String user_addr = req.getParameter("user_addr");
				String detail_addr  = req.getParameter("detail_addr");
				
				
				UserDTO udto = new UserDTO();
				udto = udao.getInfo(buyer_code);
				udto.setUser_addr(user_addr);
				udto.setUser_detail_addr(detail_addr);
				model.addAttribute("buyer",udto);
				
				
				//============구매자가 주소, 상세주소 변경했을 시, 그 값 입력하는 코드
				
				
				
				//※ 그냥 넘겨주기전에, user_code 를 seller 로 넘겨주는 메소드 
				model.addAttribute("nm_dto",nm_dto);
				
				//System.out.println("판매자의 코드 : " + user_code);
				//System.out.println("구매자의 코드 : " + session.getAttribute("user_code"));
				
				System.out.println(seller_code);
				System.out.println(buyer_code);
				
				//1) 판매자가 지금 나인지 확인.
				if (Integer.parseInt(String.valueOf(session.getAttribute("user_code")))==seller_code)
				{
					//현재 나인거
					str = "본인이 작성한 게시물은 구매할 수 없습니다!";
					model.addAttribute("check", 1);	//jsp 에서 if check==1이면, str 띄우기. 
					model.addAttribute("str", str);
					model.addAttribute("nm_article_code", nm_article_code);
					url = "/WEB-INF/view/u_normal_buy_form_ok.jsp";
					
				}
				else	//구매자 정보 가져와서 뿌려주기 및 판매자의 정보 뿌려주기 각각 다른 형태로 담자. 
				{


				//배달방법 띄워주기=================================
				DwayDTO dway_dto = new DwayDTO();
				IDwayDAO dwayDAO = SqlSession.getMapper(IDwayDAO.class);
				String del_way_code = req.getParameter("del_way_code");
				String del_way_name = dwayDAO.getDel(Integer.parseInt(del_way_code));
				model.addAttribute("del_way_name", del_way_name);
				//=================================배달방법 띄워주기
				
				//은행 코드 통해서 계좌 띄워주기==================
				BankDTO bank_dto = new BankDTO();
				IBankDAO ibankdao = SqlSession.getMapper(IBankDAO.class);
				
				String bank_code = req.getParameter("bank_code");
				System.out.println("은행코드 : " + bank_code);
				//Create_AccountDTO account_dto =  ibankdao.getAccount(Integer.parseInt(bank_code));
				//계좌정보 반환하는 메소드. 
				//뱅크코드 넘겨줄 때, 해당 계좌번호, 은행명 , crt 코드 가져오기.
				
				//model.addAttribute("account_dto", account_dto);
				//============================은행띄워주기
				
				//여기서, 인설트 먼저 시키고. 주문번호까지 출력해주기.
				NM_OrderDTO nm_order_dto = new NM_OrderDTO();
				nm_order_dto.setNm_article_code(Integer.parseInt(nm_article_code));
				nm_order_dto.setUser_code(buyer_code);
				nm_order_dto.setDel_way_code(Integer.parseInt(del_way_code));
				
				//System.out.println("테스트 :" + account_dto.getAccount_crt_code());
				//nm_order_dto.setAccount_crt_code(account_dto.getAccount_crt_code());	
				
					//구매자가 주소 바꿨을 시, 입력해주는 기능
					nm_order_dto.setUser_addr(user_addr);
					nm_order_dto.setDetail_addr(detail_addr);
				
					String booked_d = req.getParameter("booked_d");
					System.out.println("출력" + booked_d);
				    if (booked_d==null)
					{
						nm_order_dto.setBooked_d("0001-01-01");
					}
					
				//nm_order_dto.setBooked_d(booked_d);	//null 허용. 
				model.addAttribute("booked_d", booked_d);	
				
				sdao.nm_order_insert(nm_order_dto);
				
				int order_code = sdao.getOrderCode(nm_order_dto);
				
				//주문 내역 반환 메소드 주문번호 넘겨줘서. 
				model.addAttribute("nm_order",sdao.nm_order_list(order_code));
				
				//예약일 띄워주기 =================================
				nm_order_dto.setBooked_d(booked_d);
				//예약일이 있을 경우 선택해서 올 것이고, 없을 경우 걍 진행. 
				//=================================예약일 띄워주기 
				
				
				model.addAttribute("check", 0);	//jsp 에서 if check==1이면, str 띄우기.
				
				
				//판매자 dto =idao.getInfo(req.getParameter("user_code");
				
				//구매자 dto = idao.getInfo(session.getAttribute("user_code"));
				
				//여기까지는 정보고, 내용 가져오기.
				//판매상품명, 게시글 번호. 지금 article_code 살아있으니까 form 으로 제출해가지고. 그글의 내용들 가져오기.
						
				}*/
				//return "/WEB-INF/view/u_normal_buy_form_ok.jsp";
		//}
	}
	   
	   
	// ==========================일반상품 관련=========================

	//==========================프리미엄 관련=========================
	   
		//[프리미엄] 탭 눌렀을 때 가도록. 
		@RequestMapping(value="/user_prem.action", method=RequestMethod.GET)
		public String prem(HttpServletRequest req)
		{
			//이건 일반상품 페이지 요청이니까, 세션 필요 없움.
			return "/WEB-INF/view/u_prem.jsp";
		}
		
		// [판매글 작성] 눌렀을 때, 비회원 이면 안되고, 회원일 땐 되고,
		// 게다가, 대분류 넘겨줘야함.
		@RequestMapping(value="/prem_register.action", method=RequestMethod.GET)
		public String prem_register(HttpServletRequest req, Model model)
		{
			String url = null;
			HttpSession session =  req.getSession();
			IUserDAO dao = SqlSession.getMapper(IUserDAO.class);
			ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
			ArrayList<L_cateDTO> dto = new ArrayList<L_cateDTO>();
			dto = sdao.l_list();
			for (L_cateDTO l_cateDTO : dto)
			{
				System.out.println(l_cateDTO.getL_category_name());
			}
			
			String user_code =String.valueOf(session.getAttribute("user_code"));
			int a = Integer.parseInt(user_code);
			
			System.out.println(a);
			
			if (session.getAttribute("user_code")==null)
			{
				return "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
			}
			else			//회원이라면, 
			{	
				
				model.addAttribute("l_list", sdao.l_list());
				model.addAttribute("user", dao.getInfo(a));
				return "/WEB-INF/view/u_prem_signup_form.jsp";
			}
			
		}

		//===왜 소분류 안넘어오냐....
		
		//==========================프리미엄 관련=========================
		
		
		//==========================무료나눔 관련=========================
		
		//[무료나눔] 탭 눌렀을 때 가도록. ==> 여기서 리스트 출력해줘야함.  
		@RequestMapping(value="/user_free.action", method=RequestMethod.GET)
		public String free(HttpServletRequest req, Model model)
		{
			String url=null;
			HttpSession session =  req.getSession();
			//I_ImageDAO idao = SqlSession.getMapper(I_ImageDAO.class);
			ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
			
			ArrayList<FreeListDTO> free_list = sdao.free_list();
			
			String fileName = null;
			for (FreeListDTO freeListDTO : free_list)
			{
				fileName = freeListDTO.getPic1();
				freeListDTO.setPic1("pds\\image\\"+fileName);
			}
			
			session.setAttribute("arti_cate_code", 3);
			model.addAttribute("free_list", free_list);
			return "/WEB-INF/view/u_free.jsp";
			
		}
		
		// [판매글 작성] 눌렀을 때, 비회원 이면 안되고, 회원일 땐 되고,
		// 게다가, 대분류 넘겨줘야함.
		@RequestMapping(value="/free_register.action", method=RequestMethod.GET)
		public String free_register(HttpServletRequest req, Model model, HttpSession session)
		{
			String url = null;
			IUserDAO dao = SqlSession.getMapper(IUserDAO.class);
			ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
			
			ArrayList<L_cateDTO> ldto = new ArrayList<L_cateDTO>();
			//ArrayList<L_cateDTO> dto = new ArrayList<L_cateDTO>();
			ldto = sdao.l_list();
			if (session.getAttribute("arti_cate_code")==null)
			{
				//session.setAttribute("arti_cate_code", arti_cate_code);
				return "/WEB-INF/view/user_login.jsp";	
				
			} 
			else
			{
				//String arti_cate_code = req.getParameter("arti_cate_code");
				
				System.out.println("arti_cate_code : " +session.getAttribute("arti_cate_code"));
				
				for (L_cateDTO l_cateDTO : ldto)
				{
					System.out.println(l_cateDTO.getL_category_name());
				}
				
				String user_code =String.valueOf(session.getAttribute("user_code"));
				int a = Integer.parseInt(user_code);
				
				System.out.println(a);
				
				if (session.getAttribute("user_code")==null)
				{
					url = "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
				}
				else			//회원이라면, 
				{	
					
					model.addAttribute("arti_cate_code", session.getAttribute("arti_cate_code"));
					//소분류 출력하기. 
					model.addAttribute("l_list",ldto);
					//회원정보 출력하기 위함. 
					model.addAttribute("user", dao.getInfo(a));
					
					
				}
				return "/WEB-INF/view/u_free_register_form.jsp";
			}
		}
		
			// [판매글 등록하기] 버튼 눌렀을 때 실행되야하며, 세션 처리는 따로 할 필요없이, 
			// 회원번호 그대로 들고 오면 됨
			@RequestMapping(value="/free_register_ok.action", method=RequestMethod.POST)
			public String free_register_ok(FreeSellFormDTO fdto, HttpServletRequest req, Model model, HttpServletResponse res, HttpSession session) throws IOException
			{
				System.out.println("=====================================");
				System.out.println(session.getAttribute("arti_cate_code"));
				System.out.println(session.getAttribute("user_code"));
				String url = null;
				
				ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
				I_ImageDAO idao = SqlSession.getMapper(I_ImageDAO.class);
				IUserDAO dao = SqlSession.getMapper(IUserDAO.class);

				if (session.getAttribute("user_code")==null)
				{
					return "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
				}
				else	
				{
				String user_code =String.valueOf(session.getAttribute("user_code"));
				//int a = Integer.parseInt(user_code);
				
				System.out.println(user_code);
				
				//========================== 파일업로드 부분
				String root = session.getServletContext().getRealPath("/");
				//String cp = req.getContextPath();
				
				System.out.println("root" + root);
				//System.out.println("cp" + cp);
				
				// 파일을 저장할 위치 -> File import 구문 추가. 
				String savePath = root+"pds" + File.separator +"image";
				savePath += "\\";
				System.out.println("savePath : " + savePath);
				//savePath : C:\FinalStudy1\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\final_3_5_180718_1\\pds\image
				
				// 경로 지정. 
				File dir = new File(savePath);
				
				//만약 없다면, 생성하겠다. 
				if (!dir.exists())
					dir.mkdirs();
				
				String encType = "utf-8";
				int maxFileSize = 5 * 1024 * 1024;
				//MultipartRequest import 구문 추가. 
				MultipartRequest multi = null;
				multi = new MultipartRequest(req, savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
				// request => req 로. DefaultFileRenamePolicy : 중복되는 이름으 있을 경우 해결해주는 클래스 
				// 현재 throws 함. 또는 try / catch 구문이 있음. 
				/*
				 * private String fr_subject, l_category, fr_write_d, pic, user_name, l_category_name, fr_size, fr_content;
				   private int  fr_article_code, rownum, article_code, fr_hitcount, boardfile_code, user_code, l_category_code;
				   
			     	INSERT INTO TBL_FR_ARTICLE(FR_ARTICLE_CODE, USER_CODE, ARTI_CATE_CODE, FR_SUBJECT, FR_PRICE, FR_CONTENT, L_CATEGORY, FR_WRITE_D, FR_SIZE, FR_HITCOUNT)
					VALUES(ARTICLE_CODE_SEQ.NEXTVAL, #{user_code}, #{arti_cate_code}, #{fr_subject},0,#{fr_content},#{fr_l_category},SYSDATE, #{fr_size},0)
				 * */
				
				//파일 저장 DTO 호출
				//FreeSellFormDTO fdto = new FreeSellFormDTO();
				
				
				//굳이 여기서 최대값 할 필요없이 나는, insert 구문 시켜주면 됨. 
				//먼저, 게시글 등록부터. 
				String fr_subject = multi.getParameter("fr_subject");
				String fr_size = multi.getParameter("fr_size");
				String fr_content = multi.getParameter("fr_content");
				String l_category_code = multi.getParameter("l_category_code");
				//String arti_cate_code =req.getParameter("arti_cate_code");
				String fr_price = multi.getParameter("fr_price");
				
				fdto.setFr_price(Integer.parseInt(fr_price));
				fdto.setUser_code(Integer.parseInt(user_code));
				fdto.setFr_subject(fr_subject);
				fdto.setFr_size(fr_size);
				fdto.setFr_content(fr_content);
				fdto.setL_category((Integer.parseInt(l_category_code)));
				fdto.setPic1(multi.getParameter("pic1"));
				fdto.setPic2(multi.getParameter("pic2"));
				fdto.setPic3(multi.getParameter("pic3"));
				fdto.setPic4(multi.getParameter("pic4"));
				
				String picName = null;
				
				// dto 에 있는 nm_pic1 ~ 4 까지 파일 경로 삽입^___^
				picName = multi.getFilesystemName("pic1");
				fdto.setPic1(savePath+picName);
				
				picName = multi.getFilesystemName("pic2");
				fdto.setPic2(savePath+picName);
				
				picName = multi.getFilesystemName("pic3");
				fdto.setPic3(savePath+picName);
				
				picName = multi.getFilesystemName("pic4");
				fdto.setPic4(savePath+picName);
				
				System.out.println(fdto.getPic3());
				System.out.println(fdto.getPic4());
				/*
				 * V_USER_CODE           IN TBL_USER.USER_CODE%TYPE
				, V_FR_SUBJECT          IN TBL_FR_ARTICLE.FR_SUBJECT%TYPE
				, V_FR_CONTENT          IN TBL_FR_ARTICLE.FR_CONTENT%TYPE
				, V_L_CATEGORY          IN TBL_FR_ARTICLE.L_CATEGORY%TYPE
				, V_FR_SIZE             IN TBL_FR_ARTICLE.FR_SIZE%TYPE
				, V_PIC1                IN TBL_BOARDFILE.PIC1%TYPE
				, V_PIC2                IN TBL_BOARDFILE.PIC1%TYPE
				, V_PIC3                IN TBL_BOARDFILE.PIC1%TYPE
				, V_PIC4                IN TBL_BOARDFILE.PIC1%TYPE
				 * */
				
				
				sdao.free_insert(fdto);
				
				/*int fr_register = idao.fr_register(fdto);	//게시물만 일단 입력하는 메소드
				int num = idao.check_num();					//게시물의 현재 최대 등록코드 반환하는 메소드
				
				System.out.println(num);
				
				BoardFileDTO bdto = new BoardFileDTO();
				
				bdto.setArticle_code(num);	//게시물 코드에 현재 최대값 넣어주기. 
				
				
				// 다중 파일 저장
				@SuppressWarnings("rawtypes")
				Enumeration files = multi.getFileNames();	//파일명정보를 배열로 만들다
				while (files.hasMoreElements())
				{
					String name = (String) files.nextElement();	//파일명정보 Enumeration 의 다음 요소를 name1에 저장한다.
					
					if (multi.getFilesystemName(name) != null)
					{
						BoardFileDTO fileDTO = new BoardFileDTO();
						
						fileDTO.setArticle_code(num);
						fileDTO.setPic(multi.getFilesystemName(name));				//파일명이 중복되는 경우 변경된 파일명 반환.
						fileDTO.setSavefilepath(multi.getOriginalFileName(name));	//사용자가 직접 지정한 파일명 반환. saveFile -> pic
						 // 서버에 저장된 파일명
						
						idao.insertFile(fileDTO);
						
						System.out.println(multi.getFilesystemName(name));
						System.out.println(multi.getOriginalFileName(name));
						
						//dao.insertFileData(fileDTO);
						
							//getOriginalFileName() 은 사용자가 지정해서 업로드되는 파일명을 반환하고,
							//getFileSystemName()  메소드는 파일명이 중복되는 경우 변경된 파일명을 반환한다.
						 
					}
				}

				*/
				//int insertFile = idao.insertFile(bdto);	    // 등록코드 이용해서 첨부테이블에 파일 추가하기. 
				
				
				//★ insertdate 를 insertdata 로 바꿀것!!
				
				 //여기서, 게시물 확인하고 싶은데... 일단 그냥 
				//idao.getReadData(fr_article_code);
				
				//========================== 파일업로드 부분
				//String a = "'\'";
				
				//String imagePath = savePath;
				//System.out.println(fdto.getPic());
				
				//model.addAttribute("imagePath", imagePath);
				//System.out.println(imagePath);
				//model.setAttribute("imagePath", imagePath);
						//회원이라면, 
				//imagePath += "\\";
				//${imagePath}${dto.pic}
				
				}
				return "redirect:user_free.action";
			
			}
			
		
		// 판매글에 접근했을 때, 비회원 이면 안되고, 회원일 땐 되고,
		// 내용 출력해줘야함.  + 그 내역 가져오기 + 댓글, 북마크도 추가 
		@RequestMapping(value="/free_sell_form.action", method=RequestMethod.GET)
		public String free_sellform(HttpServletRequest req, Model model)
		{
			String url = null;
			HttpSession session =  req.getSession();

			if (session.getAttribute("user_code")==null)
			{
				return "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
			}
			else			//회원이라면, 
			{	
				
				int fr_article_code = Integer.parseInt(req.getParameter("fr_article_code"));
				System.out.println(fr_article_code);
				//I_ImageDAO idao = SqlSession.getMapper(I_ImageDAO.class);
				ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
				IUserDAO dao = SqlSession.getMapper(IUserDAO.class);
				FreeSellFormDTO fdto = new FreeSellFormDTO();
				//ArrayList<BoardFileDTO> bdto = new ArrayList<BoardFileDTO>();
				String user_code =String.valueOf(session.getAttribute("user_code"));
				int a = Integer.parseInt(user_code);
				
				
				//================파일불러오기 부분=============
				fdto = sdao.getReadData(fr_article_code);
				
					String fileName = null;
				
					fileName = fdto.getPic1();
					fdto.setPic1("pds\\image\\"+fileName);
					
					fileName = fdto.getPic2();
					fdto.setPic2("pds\\image\\"+fileName);
					
					fileName = fdto.getPic3();
					fdto.setPic3("pds\\image\\"+fileName);
					
					fileName = fdto.getPic4();
					fdto.setPic4("pds\\image\\"+fileName);
				
				
				
				model.addAttribute("fdto", fdto);
				//================파일불러오기 부분=============
				
	/*			
				System.out.println(fr_article_code);
				
				fdto = idao.getReadData(fr_article_code);
				bdto = idao.getpic(fr_article_code);
				
				
				ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
				
				
				System.out.println(a);
				for (FreeSellFormDTO freeDTO : fdto)
				{
					System.out.println(freeDTO.getFr_subject());
				}
				
				
				for (BoardFileDTO boardFileDTO : bdto)
				{
					System.out.println(boardFileDTO.getPic());
				}
				
				
					//내역 출력하기 
					//model.addAttribute(arg0, arg1);
					
					model.addAttribute("bdto", idao.getpic(fr_article_code));
					model.addAttribute("fdto", idao.getReadData(fr_article_code));
					//회원정보 출력하기 위함. 
	 */				model.addAttribute("user", dao.getInfo(a));
				//	model.addAttribute("imagePath", imagePath);
					// 유저코드 넘기는 이유는, 내가 그 페이지 주인이면, 구매하기 눌러도 안넘어가도록 하기 위해. 
			}
			
 			return "/WEB-INF/view/u_free_sell_form.jsp";

		}
		

		// 구매할 때, 비회원 이면 안되고, 회원일 땐 되고,
		// 내용 출력해줘야함.  + 그 내역 가져오기 + 댓글, 북마크도 추가 
		@RequestMapping(value="/free_buy_form.action", method=RequestMethod.GET)
		public String free_buyform(HttpServletRequest req, Model model)
		{
			String url = null;
			HttpSession session =  req.getSession();
			
			//==========================기본 세션 처리. 
			if (session.getAttribute("user_code")==null)
			{
				System.out.println("유저코드가 없다");
				return "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
			}
			else			//회원이라면, 
			{	
				String str = "";
				int user_code = Integer.parseInt(req.getParameter("user_code"));
				//System.out.println("판매자의 코드 : " + user_code);
				//System.out.println("구매자의 코드 : " + session.getAttribute("user_code"));
				
				
				String fr_article_code = req.getParameter("fr_article_code");
				System.out.println(fr_article_code);
				
				//1) 판매자가 지금 나인지 확인.
				if (Integer.parseInt(String.valueOf(session.getAttribute("user_code")))==user_code)
				{
					//현재 나인거
					str = "본인이 작성한 게시물은 구매할 수 없습니다!";
					model.addAttribute("check", 1);	//jsp 에서 if check==1이면, str 띄우기. 
					model.addAttribute("str", str);
					model.addAttribute("fr_article_code", fr_article_code);
					url = "/WEB-INF/view/u_free_buy_form.jsp";
					
				}
				else	//구매자 정보 가져와서 뿌려주기 및 판매자의 정보 뿌려주기 각각 다른 형태로 담자. 
				{
				
				FreeSellFormDTO fdto = new FreeSellFormDTO();
				ISellDAO sdao = SqlSession.getMapper(ISellDAO.class);
				fdto = sdao.getReadData(Integer.parseInt(req.getParameter("fr_article_code")));
				
				I_ImageDAO idao = SqlSession.getMapper(I_ImageDAO.class);
				//fdto = idao.getReadData(Integer.parseInt(req.getParameter("fr_article_code")));
				
				
				model.addAttribute("fdto",fdto);
				
				//은행 띄워주기==================
				ArrayList<BankDTO> bank_dto = new ArrayList<BankDTO>();
				IBankDAO ibankdao = SqlSession.getMapper(IBankDAO.class);
				bank_dto = ibankdao.list();
				model.addAttribute("bank_dto", bank_dto);
				//============================은행띄워주기
				
				//배달방법 띄워주기=================================
			
				
				//=================================배달방법 띄워주기
					
				
					model.addAttribute("check", 0);	//jsp 에서 if check==1이면, str 띄우기.
					IUserDAO udao = SqlSession.getMapper(IUserDAO.class);
					UserDTO dto = new UserDTO();
					
					//판매자 dto =idao.getInfo(req.getParameter("user_code");
					
					//구매자 dto = idao.getInfo(session.getAttribute("user_code"));
					
					model.addAttribute("seller", udao.getInfo(Integer.parseInt(req.getParameter("user_code"))));
					model.addAttribute("buyer", udao.getInfo(Integer.parseInt(String.valueOf(session.getAttribute("user_code")))));
					//여기까지는 정보고, 내용 가져오기.
					//판매상품명, 게시글 번호. 지금 article_code 살아있으니까 form 으로 제출해가지고. 그글의 내용들 가져오기.
					
				}
				return "/WEB-INF/view/u_free_buy_form.jsp";
				}
			
			
		}
		
		//구매하면, 주문 테이블에 인설트 되고, 다음 확인하는 페이지 출력해주기. 
		@RequestMapping(value="/free_buy_ok.action", method=RequestMethod.GET)
		public String fr_order(HttpServletRequest req)
		{
			String url = "";
			HttpSession session = req.getSession();
			// 여기서는 구매자가 구매하기 버튼을 클릭하면, 그 정보를 가져와서 insert 실행 및 주문테이블에 추가. 
			// 그리고 구매자가 확인할 수 있는 내역 출력 . 은행/ 배송정보 등..

			//===기본 세션 처리
			if (session.getAttribute("user_code")==null)
			{
				System.out.println("유저코드가 없다");
				return  "/WEB-INF/view/user_login.jsp";	//일로 가면, 지금 비회원상태
			}
			else
			{
				//회원이라면. 그대로 진행. 굳이 여기서 판매자가 나타나진 않겠지..?
				//내용 잡아와서 인설트. 
				//주문번호 생성, 주문일자, 은행 코드 넘겨줘서 번호 출력해주게 하는 메소드
				// 선택한 배송정보, 구매자 정보, 판매자 정보, 게시글 번호. 
			}
			
			return url;
		}
		
}
