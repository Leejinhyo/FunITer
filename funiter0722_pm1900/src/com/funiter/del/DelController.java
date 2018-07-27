package com.funiter.del;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class DelController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 최초 로그인 페이지 요청
	@RequestMapping(value="/dellogin.action", method=RequestMethod.GET)
	public String login()
	{
		return "WEB-INF/view/Del_login.jsp";
		
	}
	
	// 회원가입 페이지1 요청
	@RequestMapping(value="/delsignup1.action", method=RequestMethod.GET)
	public String delsignup1()
	{
		return "WEB-INF/view/Del_signup1.jsp";
	}
	
	// 회원가입 페이지2 요청
	@RequestMapping(value="/delsignup2.action", method=RequestMethod.GET)
	public String delsignup2()
	{
		return "WEB-INF/view/Del_signup2.jsp";
	}
	
	// 회원가입 페이지2: 인서트 → 페이지3 요청
	@RequestMapping(value="/delsignupinfoinsert.action", method=RequestMethod.POST)
	public String delsignupinfoinsert(DelsignupDTO dto, ModelMap model, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		
		dao.delsignupinfoinsert(dto);
		//model.addAttribute("getid",dto.getDel_id());
		//System.out.println(dto.getDel_id());
		session.setAttribute("del_id", dto.getDel_id());
		
		return "redirect:delsignup3.action";
	}
	
	// 회원가입 페이지3: 가입(임시)정보 출력, 은행 정보 출력 
	@RequestMapping(value="/delsignup3.action", method=RequestMethod.GET)
	public String delsignup3(ModelMap model, DelsignupDTO dto, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		
		String del_id = String.valueOf(session.getAttribute("del_id"));
		//String del_id = "";
		//del_id = (String)session.getAttribute("getid");
		//System.out.println(del_id);
		
		model.addAttribute("delsignup3", dao.delsignup3(del_id));	//가입정보 출력
		model.addAttribute("delbankchoice", dao.delbankchoice());	//은행 selectbox
		return "WEB-INF/view/Del_signup3.jsp";
	}
	
	// 회원가입 페이지3: case① 결제 사항 인서트 → 로그인페이지 이동
	@RequestMapping(value="/delgopay.action", method=RequestMethod.POST)
	public String delgopay(DelpayDTO dto, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		
		//Integer del_code = (Integer)(session.getAttribute("del_code"));
		//dao.delsignup3gopay(dto);
		dao.delgopay(dto);
		//dao.deljobschedule(del_id);
		//dao.deljobschedule(del_code);
		return "redirect:dellogin.action";
	}
	
	
	
	// 회원가입 페이지3: case② 결제 사항 인서트 → 로그인페이지 이동
	@RequestMapping(value="/delsignupwithdraw.action", method=RequestMethod.POST)
	public String delsignupwithdraw(DelsignupDTO dto, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		String del_id = String.valueOf(session.getAttribute("del_id"));
		
		//dao.delsignup3gopay(dto);
		//System.out.println("삭제대기");
		dao.delsignupwithdraw(del_id);
		//System.out.println("삭제완료");
		return "redirect:dellogin.action";
	}
	
	
	/*
	@RequestMapping(value="/delsigntest.action", method=RequestMethod.POST)
	public String delsigninfoinsert(DelsignupDTO dto, ModelMap model, HttpServletRequest req, HttpServletResponse res)
	{
		String del_id = req.getParameter("del_id");
		String del_pw = req.getParameter("del_pw");
		String del_name = req.getParameter("del_name");
		String del_lisence1 = req.getParameter("del_lisence1");
		String del_lisence2 = req.getParameter("del_lisence2");
		String del_owner = req.getParameter("del_owner");
		String del_tel1 = req.getParameter("del_tel1");
		String del_tel2 = req.getParameter("del_tel2");
		String del_tel3 = req.getParameter("del_tel3");
		String del_loc = req.getParameter("del_loc");
		String url = req.getParameter("url");
		String introduce = req.getParameter("introduce");
		
		model.addAttribute("del_id", del_id);
		model.addAttribute("del_pw", del_pw);
		model.addAttribute("del_name", del_name);
		model.addAttribute("del_lisence1", del_lisence1);
		model.addAttribute("del_lisence2", del_lisence2);
		model.addAttribute("del_owner", del_owner);
		model.addAttribute("del_tel1", del_tel1);
		model.addAttribute("del_tel2", del_tel2);
		model.addAttribute("del_tel3", del_tel3);
		model.addAttribute("del_loc", del_loc);
		model.addAttribute("url", url);
		model.addAttribute("introduce", introduce);
		
		return "redirect:delsignup3.action";
	}
	@RequestMapping(value="/delsignup3.action", method=RequestMethod.GET)
	public String delsignup3(ModelMap model, HttpServletRequest req, HttpServletResponse res)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		model.addAttribute("delbankchoice", dao.delbankchoice());
		return "WEB-INF/view/Del_signup3.jsp";
		
	}
	*/
	/*
	// 회원가입 페이지2 값 insert
	@RequestMapping(value="/delsignupandpay.action", method=RequestMethod.POST)
	public String delsignupandpay(DelsignupDTO dto, DelpayDTO dto2)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		System.out.println("test1");
		System.out.println("dd"+dto.getDel_id());
		dao.delsignupandpay(dto, dto2);
		System.out.println("aa"+dto.getDel_id());
		System.out.println("test2");
		//dao.delsigninfoinsert(dto);
		//dao.delpayadd(dto2);
		return "redirect:dellogin.action";
	}
	*/
	/*
	// 회원가입 페이지3 요청(정기결제신청)
	@RequestMapping(value="/delsignup3.action", method=RequestMethod.GET)
	public String delsignup3(ModelMap model)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		//String del_id = "";
		//del_id = (String)session.getAttribute("del_id");
		//System.out.println(del_id); //-- 로그인 한 아이디
		
		model.addAttribute("delsignup3", dao.delsignup3());	//가입정보 출력
		model.addAttribute("delbankchoice", dao.delbankchoice()); 			//은행 select box 출력
		
		return "WEB-INF/view/Del_signup3.jsp";
	}	
	*/
	
//============================================================================================================	
	// 아이디 패스워드 체크 후 마이페이지(결제내역)으로 넘김
	@RequestMapping(value="/dellogincheck.action", method=RequestMethod.POST)
	public String logincheck(HttpServletRequest req, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		DelsignupDTO dto = new DelsignupDTO();
		
		String del_id = req.getParameter("del_id");
		String del_pw = req.getParameter("del_pw");
		
		del_id = del_id.toLowerCase();
		
		String check = null;
		
		dto.setDel_id(del_id);
		dto.setDel_pw(del_pw);
		
		check = dao.delLogin(dto);
		if (check==null)
		{
			//로그인 실패
			return "redirect:dellogin.action";	
		}
		else
		{
			//로그인 성공
			session.setAttribute("del_id", del_id);
			return "redirect:delpaylist.action";
		}
		
	}
	
	 // 로그아웃 처리
    @RequestMapping(value="/dellogout.action", method=RequestMethod.GET)
    public String logout(HttpSession session)
    {
       session.invalidate();
       return "redirect:dellogin.action";
    }
	
	// 업체 결제 내역 출력
	@RequestMapping(value="/delpaylist.action", method=RequestMethod.GET)
	public String paylist(ModelMap model, HttpSession session)
	{ 
		
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		
		String del_id="";
		del_id = (String)(session.getAttribute("del_id"));
		model.addAttribute("del_id", del_id);
		//System.out.println(del_id);
		//-- yong1
		
		/*
		for (DelpaylistDTO dto : dao.delpaylist())
		{
			System.out.println(dto.getDel_code());
		}
		*/
		
		model.addAttribute("delpaylist", dao.delpaylist(del_id));
		
		return "WEB-INF/view/Del_mypage.jsp";
	}
	
	// 수정 전 로그인 페이지 요청 (★get 방식으로 들어가지긴 함, 허나 로그인은 안됨)
	@RequestMapping(value="/delupdatelogin.action", method=RequestMethod.GET)
	public String updatelogin(HttpSession session)
	{
		//IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		//String del_id="";
		//del_id = (String)(session.getAttribute("del_id"));
		//System.out.println(del_id); 
		
		return "WEB-INF/view/Del_update_login.jsp";
	}
	
	// 수정 전 로그인 사항 체크
	@RequestMapping(value="/delupdatelogincheck.action", method=RequestMethod.POST)
	public String updatelogincheck(HttpServletRequest req, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		DelsignupDTO dto = new DelsignupDTO();
		String del_id2="";
		del_id2 = (String)(session.getAttribute("del_id"));
		//System.out.println("del_id2 : " + del_id2); 	//-- 세션에 있는 로그인 된 아이디
		
		String del_id = req.getParameter("del_id");
		String del_pw = req.getParameter("del_pw"); 
		
		del_id = del_id.toLowerCase();
		
		String check = null;
		
		dto.setDel_id(del_id);
		dto.setDel_pw(del_pw);
		
		check = dao.delupdateLogin(dto);
		//System.out.println("check : " + check);		//-- 내가 입력한 값을 바탕으로 조회된 id
		//System.out.println("del_id : " + del_id);	//-- 내가 입력한 아이디
		if (check==null)
		{
			//로그인 실패
			return "redirect:delupdatelogin.action";	
		}
		else if (!check.equals(del_id2))
		{
			//로그인 실패
			return "redirect:delupdatelogin.action";
		}
		else
		{
			//로그인 성공
			//session.setAttribute("del_id", del_id);
			//return "WEB-INF/view/Del_update.jsp";
			return "redirect:delupdate.action";
		}
	}
	
	// 업체 정보수정 요청 시, 가입정보 토대로 보여주기
	@RequestMapping(value="/delupdate.action", method=RequestMethod.GET)
	public String update(ModelMap model, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		String del_id = "";
		del_id = (String)session.getAttribute("del_id");
		//System.out.println(del_id); -- 로그인 한 아이디
		
		//dao.delupdate(del_id);	//--수행만 할 때
		model.addAttribute("delupdate", dao.delupdate(del_id)); //--리스트로 뽑아서 봐야할 때
		
		return "WEB-INF/view/Del_update.jsp";
	}
	
	// 업체 정보 수정 사항 반영 후 → 결제내역 재요청
	@RequestMapping(value="/delupdate2.action", method=RequestMethod.POST)
	public String update2(DelsignupDTO dto)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);

		//String del_id = req.getParameter("del_id");
		
		dao.delupdate2(dto);
		
		return "WEB-INF/view/Del_mypage.jsp";
	}
	
	/*위에꺼 해보다가 그만둔 것
	@RequestMapping(value="/delupdate2.action", method=RequestMethod.POST)
	public String update2(HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		String del_id = "";
		del_id = (String)session.getAttribute("del_id");
		
		System.out.println("나와랏 : " + del_id);
		
		dao.delupdate2(del_id);
		
		System.out.println("새로운아이 : " + del_id);
		return "WEB-INF/view/Del_mypage.jsp";
	}
	*/
	
	// 회원 탈퇴
	@RequestMapping(value="/delremove.action", method=RequestMethod.POST)
	public String delremove(DelsignupDTO dto, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);

		dao.delremove(dto);
		
		session.invalidate();	//탈퇴 후 세션 제거.
		
		return "redirect:dellogin.action";
	}
	
	//정기결제신청
	@RequestMapping(value="/delsignup3again.action", method=RequestMethod.GET)
	public String delsignup3again(ModelMap model, HttpSession session)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		String del_id = "";
		del_id = (String)session.getAttribute("del_id");
		//System.out.println(del_id); //-- 로그인 한 아이디
		
		model.addAttribute("delsignup3again", dao.delsignup3again(del_id));	//가입정보 출력
		model.addAttribute("delbankchoice", dao.delbankchoice()); 			//은행 select box 출력
		
		return "WEB-INF/view/Del_signup3again.jsp";
	}
	
	@RequestMapping(value="/delpayagain.action", method=RequestMethod.POST)
	public String delpay(DelpayDTO dto)
	{
		IDelDAO dao = sqlSession.getMapper(IDelDAO.class);
		dao.delpayadd(dto);
		return "redirect:delpaylist.action";
	}
	
}

