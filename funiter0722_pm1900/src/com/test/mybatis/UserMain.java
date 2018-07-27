package com.test.mybatis;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserMain
{ 	
	@Autowired
	private SqlSession SqlSession;
	
	
	//※제일 처음 요청 페이지.
	@RequestMapping(value="/first_main.action", method=RequestMethod.GET)
	public String loginform()
	{
		
		//모든곳에 세션처리
		// 솔직히 . 현재 페이지에서는 해주는것이 없다! 
		String url=null;
		url = "/WEB-INF/view/first_main.jsp";
		return url;
	}
	
	//홈 버튼 눌렀을 때. 
	@RequestMapping(value="/user_main.action", method=RequestMethod.GET)
	public String home(HttpServletRequest req)
	{
		String url=null;
		//모든곳에 세션처리
		HttpSession session =  req.getSession();
		if (session.getAttribute("user_code")==null)
		{
			url = "/WEB-INF/view/u_main.jsp";	//일로 가면, 지금 비회원상태
		}
		else
			url = "/WEB-INF/view/u_main.jsp";
		
		return url;
	}
	
	
	
	
	//※로그인 페이지 user_login.action 에 의해서. 
	@RequestMapping(value="/user_login.action", method=RequestMethod.GET)
	public String login(HttpServletRequest req)
	{
		//만약, 내가 이미 로그인이 되어있다면, 굳이 갈 필요 없다고 생각. 
		HttpSession session = req.getSession();
		String url=null;
		
		if (session.getAttribute("user_code")==null)	//비회원이라면, 로그인페이지로 이동.
		{
			url= "/WEB-INF/view/user_login.jsp";
		}
		else			// 이미 로그인 되어있다면, 마이페이지로 이동! 
			url = "/user_mypage_main.action";
		
		return url;
	}
	
	
   //※ 로그인 시, 아이디, 비밀번호 검사
   @RequestMapping(value="/logincheck.action", method=RequestMethod.POST)
   public String logincheck(HttpServletRequest req, HttpServletResponse res, HttpSession session)
   {
	  String url=null;
	  //id잡아오기 
	  String user_id = req.getParameter("user_id");
	  String user_pw = req.getParameter("user_pw");
	  System.out.println(user_id);
	  System.out.println(user_pw);
	  
	  
	  UserDTO dto = new UserDTO();
	  
	  dto.setUser_id(user_id);
	  dto.setUser_pw(user_pw);
	  
	  //dao에서 검사하기 위한 과정. 
      IUserDAO dao = SqlSession.getMapper(IUserDAO.class);
      
      int check=0;     
      
      check = dao.logincheck(dto);
      
      System.out.println(check);
      switch (check)
      {
      case 0:	// 카운트 세는데, 그 값이 없다면, 사용자 정보가 없다는 것! 로그인 폼 요청한다. 
         url="redirect:user_login.action";	//없으면, 걍 로그인페이지에 머무르기. 
         break;

      default:		//그게아니라면, 기본으로 user_id 를 세션으로 잡아준다! 
         session.setAttribute("user_code", dao.code(user_id));
         System.out.println(dao.code(user_id));
         url="/WEB-INF/view/u_main.jsp";			//그 후, 사용자는 상품판매 페이지로 이동하는데, 모든걸 합쳐놓은 페이지로! 
         break;
    	  
      }
      
      return url;
   }
   
   // 로그아웃처리-- 만약 사용자가 로그인을 했는데, 로그아웃 하고 싶을 때는 [로그인] [로그아웃] 버튼으로 바꿔주면 되나. 
   @RequestMapping(value="/logout.action", method=RequestMethod.GET)
   public String logout(HttpSession session)
   {
      session.invalidate();
      // 사용자 처음 페이지로 이동해야됨
      return "/WEB-INF/view/first_main.jsp";
   }
   

   //메인 홈페이지 여기서, id있는지 유무 확인하기. 
   @RequestMapping(value="/main.action", method=RequestMethod.GET)
   public String mainHome(HttpServletRequest req, Model model)
   {
	   String url =null;
	   HttpSession session = req.getSession();
	   IUserDAO dao = SqlSession.getMapper(IUserDAO.class);
	   
	   
	   if (session.getAttribute("user_code")!=null)	//회원인 상태라면,  
	   {
		   //user_name 넘겨주기
		   //dao.에서 전달받아오기.
		   String user_name = dao.searchName((Integer)session.getAttribute("user_code"));
		   model.addAttribute("user_name", user_name);
	   
	   }
	   
	   url = "/WEB-INF/view/u_main.jsp";
	   
	   
	   return url;
   }


	
	
	//회원가입 버튼을 클릭 시, 약관동의하기 위한 url --> 로그인 폼으로 갈 수가 없으니 , 비회원만 해당한다. 
	@RequestMapping(value="/user_signup.action", method=RequestMethod.GET)
	public String signup()
	{
		String url=null;
		url = "/WEB-INF/view/user_signup1.jsp";
		return url;
	}
	
	
	//회원가입 하기 위한 url, 은행명 띄워준다. 
	@RequestMapping(value="/user_signup2.action", method=RequestMethod.POST)
	public String signup2(Model model)
	{
		String url=null;
		IBankDAO dao = SqlSession.getMapper(IBankDAO.class);
	
		model.addAttribute("banklist", dao.list());
		
		url= "/WEB-INF/view/user_signup2.jsp";
		return url;
	}
	
	
	// 회원가입 양식 작성 후, insert 되는 쿼리문있어야, 회원번호 생성됨. 
	// 그 즉시, 컨트롤러가 인설트 시킬 것. 
	
	
	// 인설트 시키는 url
	@RequestMapping(value="/userinsert.action", method=RequestMethod.POST)
	public String userinsert(UserDTO dto, HttpServletRequest req, HttpServletResponse res, ModelMap model)
	{
		String url=null;
		//userinsert 시키는 컨트롤러. 필요한건 
		IUserDAO dao = SqlSession.getMapper(IUserDAO.class);
	
		dao.userinsert(dto);
		model.addAttribute("user_code", dao.searchCode());

		System.out.println(dao.searchCode());
		
		//소분류 띄워주는 액션		
		IS_cateDAO s_dao = SqlSession.getMapper(IS_cateDAO.class);
		model.addAttribute("s_list",s_dao.list());
	
		url ="/WEB-INF/view/user_signup3.jsp";
		return url;
		
	}
	
	
	//관심상품 선택 후, insert 시켜주는 url
	@RequestMapping(value="/user_favor.action", method=RequestMethod.POST)
	public String signup3(FavorDTO dto, HttpServletRequest req, HttpServletResponse res)
	{
		String url=null;
		//넘겨주는건 없구, INSERT 시켜주는 거. 
		IFavorDAO dao = SqlSession.getMapper(IFavorDAO.class);
		//String temp = req.getParameter("user_code");
		
		//System.out.println(temp);
		
		dao.addfavor(dto);
		url= "/WEB-INF/view/user_login.jsp";
		return url;
	}
	
	//마이페이지로 갔을 때, 비회원이면 로그인 창. 회원이면 ~님 환영합니다 할 창.
	@RequestMapping(value="/user_mypage_main.action", method=RequestMethod.GET)
	public String mypage(HttpServletRequest req, Model model)
	{
		String url=null;
		HttpSession session = req.getSession();
		IUserDAO dao  = SqlSession.getMapper(IUserDAO.class);
		//System.out.println("호출은되나");
		int user_code = 0;
		if (session.getAttribute("user_code")==null)	//비회원이라면. 
		{
			url = "/WEB-INF/view/user_login.jsp";
		}
		else
		{
			//회원이라면, 
			user_code =(Integer)session.getAttribute("user_code");
			model.addAttribute("user_name",  dao.searchName(user_code));
			url = "/WEB-INF/view/u_my_main.jsp";
			
		}
			
		return url;
	}
	
	//아이디 찾기. user_find_id.action
	@RequestMapping(value="/user_find_id.action", method=RequestMethod.GET)
	public String find_id(HttpServletRequest req, Model model)
	{
		String url=null;
		HttpSession session = req.getSession();
		IUserDAO dao  = SqlSession.getMapper(IUserDAO.class);
		//System.out.println("호출은되나");
		int user_code = 0;
		if (session.getAttribute("user_code")==null)	//비회원이라면. 
		{
			url = "/WEB-INF/view/user_find_id.jsp";
		}
		else
		{
			//회원이라면, 사실 여기에 접근하는자체가 안되는데...
			user_code =(Integer)session.getAttribute("user_code");
			model.addAttribute("user_name",  dao.searchName(user_code));
			url = "/WEB-INF/view/u_my_main.jsp";
			
		}
			
		return url;
	}
	
	//아이디가 있는지 확인하기. user_finded_id.action
	@RequestMapping(value="/user_finded_id.action", method=RequestMethod.POST)
	public String finded_id(HttpServletRequest req, Model model)
	{
		String url=null;
		
		String user_name = req.getParameter("user_name");
		String user_tel = req.getParameter("user_tel");

		
		UserDTO dto = new UserDTO();
		
		IUserDAO dao  = SqlSession.getMapper(IUserDAO.class);
		//여기서, user_name, user_tel 가져왔을 때, 같은 정보가 있을때의 user_id 띄워주기.
		//dto꾸리기
		
		dto.setUser_name(user_name);
		dto.setUser_tel(user_tel);
	
		
		model.addAttribute("lists", dao.lists(dto));
		url = "/WEB-INF/view/user_finded_id.jsp";
	
		return url;
	}
	
	
	//비밀번호 찾기. user_find_pw.action
		@RequestMapping(value="/user_find_pw.action", method=RequestMethod.GET)
		public String find_pw(HttpServletRequest req, Model model)
		{
			String url=null;
			HttpSession session = req.getSession();
			IUserDAO dao  = SqlSession.getMapper(IUserDAO.class);
			int user_code = 0;
			if (session.getAttribute("user_code")==null)	//비회원이라면. 
			{
				url = "/WEB-INF/view/user_find_pw.jsp";
			}
			else
			{
				//회원이라면, 사실 여기에 접근하는자체가 안되는데...
				user_code =(Integer)session.getAttribute("user_code");
				model.addAttribute("user_name",  dao.searchName(user_code));
				url = "/WEB-INF/view/u_my_main.jsp";
				
			}
				
			return url;
		}
		
	
		//사용자가 있는지 확인하기. user_finded_id.action
		@RequestMapping(value="/user_finded_pw.action", method=RequestMethod.POST)
		public String finded_pw(HttpServletRequest req, Model model)
		{
			String url=null;
			
			String user_id = req.getParameter("user_id");
			String user_tel = req.getParameter("user_tel");

			
			UserDTO dto = new UserDTO();
			
			IUserDAO dao  = SqlSession.getMapper(IUserDAO.class);
			//여기서, user_name, user_tel 가져왔을 때, 같은 정보가 있을때의 user_id 띄워주기.
			//dto꾸리기
			
			dto.setUser_id(user_id);
			dto.setUser_tel(user_tel);
		
			
			model.addAttribute("lists", dao.pwlists(dto));
			url = "/WEB-INF/view/user_finded_pw.jsp";
		
			return url;
		}
	
		

		//비밀번호 변경하기 "user_changepw.action"
		@RequestMapping(value="/user_changepw.action", method=RequestMethod.POST)
		public String change_pw(HttpServletRequest req, Model model)
		{
			String url=null;
			
			int user_code = Integer.parseInt(req.getParameter("user_code"));
			String user_pw = req.getParameter("user_pw");

			UserDTO dto = new UserDTO();
			
			System.out.println(user_code);
			System.out.println(user_pw);
			
			IUserDAO dao  = SqlSession.getMapper(IUserDAO.class);
			//여기서, user_name, user_tel 가져왔을 때, 같은 정보가 있을때의 user_id 띄워주기.
			//dto꾸리기
			
			
			dto.setUser_code(user_code);
			dto.setUser_pw(user_pw);
		
			dao.pwchange(dto);
			
			url = "/WEB-INF/view/user_login.jsp";
		
			return url;
		}
		
		//================고객센터 편
		//[이용가이드] 눌렀을 때 소개 페이지로user_customer_service5.action
		@RequestMapping(value="/user_customer_service5.action", method=RequestMethod.GET)
		public String service5(HttpServletRequest req)
		{
			String url=null;
			//모든곳에 세션처리
			HttpSession session =  req.getSession();
			if (session.getAttribute("user_code")==null)
			{
				url = "/WEB-INF/view/u_customer_service5.jsp";	//일로 가면, 지금 비회원상태
			}
			else
				url = "/WEB-INF/view/u_customer_service5.jsp";
			
			return url;
		}
		
		
		
		//18.07.19★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
		//[공지사항] 눌렀을 때                        
		@RequestMapping(value="/user_customer_service1.action", method=RequestMethod.GET)
		public String service1(HttpServletRequest req)
		{
			String url=null;
			//모든곳에 세션처리
			HttpSession session =  req.getSession();
			if (session.getAttribute("user_code")==null)
			{
				url = "/WEB-INF/view/u_customer_service1.jsp";	//일로 가면, 지금 비회원상태
			}
			else
				url = "/WEB-INF/view/u_customer_service1.jsp";
			
			return url;
		}
		//[문의게시판] 눌렀을 때                        
		@RequestMapping(value="/user_customer_service2.action", method=RequestMethod.GET)
		public String service2(HttpServletRequest req)
		{
			String url=null;
			//모든곳에 세션처리
			HttpSession session =  req.getSession();
			if (session.getAttribute("user_code")==null)
			{
				url = "/WEB-INF/view/u_customer_service2.jsp";	//일로 가면, 지금 비회원상태
			}
			else
				url = "/WEB-INF/view/u_customer_service2.jsp";
			
			return url;
		}
		
		//[신고접수] 눌렀을 때                        
		@RequestMapping(value="/user_customer_service3_1.action", method=RequestMethod.GET)
		public String service3_1(HttpServletRequest req)
		{
			String url=null;
			//모든곳에 세션처리
			HttpSession session =  req.getSession();
			if (session.getAttribute("user_code")==null)
			{
				url = "redirect:user_login.action";	//비회원은 못 들어감
			}
			else
				url = "/WEB-INF/view/u_customer_service3_1.jsp";
			
			return url;
		}
		
		//[FAQ] 눌렀을 때                        
		@RequestMapping(value="/user_customer_service4.action", method=RequestMethod.GET)
		public String service4(HttpServletRequest req)
		{
			String url=null;
			//모든곳에 세션처리
			HttpSession session =  req.getSession();
			if (session.getAttribute("user_code")==null)
			{
				url = "/WEB-INF/view/u_customer_service4.jsp";	//일로 가면, 지금 비회원상태
			}
			else
				url = "/WEB-INF/view/u_customer_service4.jsp";
			
			return url;
		}
		
		
		
		
		

}










