/*===================
	MemberMain.java
	- 컨트롤러
===================*/

package com.funiter.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.funiter.admin.IAdminDAO;
import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;

	// 메인 → 로그인으로 페이지 이동
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String login(ModelMap model)
	{
		return "WEB-INF/view/AdLogin.jsp";
	}

	// 처음 화면관리자 페이지로 넘어갈 때 화면
	@RequestMapping(value = "/adminindex.action", method = RequestMethod.GET)
	public String adminIndex(ModelMap model)
	{
		return "WEB-INF/view/AdIndex.jsp";
	}

	// 로그인 아이디, 비밀번호 검사
	@RequestMapping(value = "/adlogincheck.action", method = RequestMethod.POST)
	public String logincheck(HttpServletRequest req, HttpServletResponse res, HttpSession session, AdminDTO dto)
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		int check = 0;
		String url = "";

		check = dao.logincheck(dto);

		System.out.println(check);
		switch (check)
		{
		case 0:
			url = "WEB-INF/view/AdLogin.jsp";
			break;

		default:
			session.setAttribute("admin_id", dto.getAdmin_id());
			url = "redirect:adminindex.action";
			break;
		}

		return url;
	}

	// 로그아웃처리
	@RequestMapping(value = "/adlogout.action", method = RequestMethod.GET)
	public String logout(HttpSession session)
	{
		session.invalidate();
		// 사용자 처음 페이지로 이동해야됨
		return "redirect:adminindex.action";
	}

	// 일반게시물관리
	@RequestMapping(value = "/nmartislcare.action", method = RequestMethod.GET)
	public String nmArtiSlCare(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("nmarti", dao.nmarti());
		model.addAttribute("countnmarti", dao.countnmarti());

		return "WEB-INF/view/NmArtiSlCare.jsp";
	}

	// 일반게시물 숨김
	@RequestMapping(value = "/nmhide.action", method = RequestMethod.GET)
	public String nmHide(ModelMap model, HttpSession session, HttpServletRequest req)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		int nm_arti_code = Integer.parseInt(req.getParameter("nm_arti_code"));
		String admin_id = String.valueOf(session.getAttribute("admin_id"));
		int admin_code = dao.exchangeadmincode(admin_id);

		dao.nmhide(nm_arti_code, admin_code);

		return "redirect:nmartislcare.action";
	}

	// 일반게시물 숨김 해제
	@RequestMapping(value = "/nmnonhide.action", method = RequestMethod.GET)
	public String nmNonHide(ModelMap model, HttpSession session, HttpServletRequest req)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		int nm_arti_code = Integer.parseInt(req.getParameter("nm_arti_code"));
		String admin_id = String.valueOf(session.getAttribute("admin_id"));
		int admin_code = dao.exchangeadmincode(admin_id);

		dao.nmnonhide(nm_arti_code, admin_code);

		return "redirect:nmartislcare.action";
	}

	// 무료나눔게시물관리
	@RequestMapping(value = "/frartislcare.action", method = RequestMethod.GET)
	public String frArtiSlCare(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("frarti", dao.frarti());
		model.addAttribute("countfrarti", dao.countfrarti());

		return "WEB-INF/view/FrArtiSlCare.jsp";
	}

	// 무료나눔게시물 숨김
	@RequestMapping(value = "/frhide.action", method = RequestMethod.GET)
	public String frHide(ModelMap model, HttpSession session, HttpServletRequest req)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		int fr_arti_code = Integer.parseInt(req.getParameter("fr_arti_code"));
		String admin_id = String.valueOf(session.getAttribute("admin_id"));
		int admin_code = dao.exchangeadmincode(admin_id);

		dao.frhide(fr_arti_code, admin_code);

		return "redirect:frartislcare.action";
	}

	// 무료나눔게시물 숨김 해제
	@RequestMapping(value = "/frnonhide.action", method = RequestMethod.GET)
	public String frNonHide(ModelMap model, HttpSession session, HttpServletRequest req)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		int fr_arti_code = Integer.parseInt(req.getParameter("fr_arti_code"));
		String admin_id = String.valueOf(session.getAttribute("admin_id"));
		int admin_code = dao.exchangeadmincode(admin_id);

		dao.frnonhide(fr_arti_code, admin_code);

		return "redirect:frartislcare.action";
	}

	// 숨김게시물관리
	@RequestMapping(value = "/hideartislcare.action", method = RequestMethod.GET)
	public String hideArtiSlCare(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("hidearti", dao.hidearti());
		model.addAttribute("counthidearti", dao.counthidearti());

		return "WEB-INF/view/HideArtiCare.jsp";
	}

	// 거래중 게시물 내역
	@RequestMapping(value = "/dealingarti.action", method = RequestMethod.GET)
	public String dealingArti(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("dealingarti", dao.dealingarti());
		model.addAttribute("countdealingarti", dao.countdealingarti());

		return "WEB-INF/view/DealingArti.jsp";
	}

	// 거래완료 게시글 내역
	@RequestMapping(value = "/dealcomplarti.action", method = RequestMethod.GET)
	public String dealComplArti(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("dealcomplarti", dao.dealcomplarti());
		model.addAttribute("countdealcomplarti", dao.countdealcomplarti());

		return "WEB-INF/view/DealComplArti.jsp";
	}

	// 프리미엄 전체 내역
	@RequestMapping(value = "/pmalllist.action", method = RequestMethod.GET)
	public String pmAllList(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("pmalllist", dao.pmalllist());
		model.addAttribute("countpmalllist", dao.countpmalllist());

		return "WEB-INF/view/PmAllList.jsp";
	}

	// 프리미엄 접수 내역
	@RequestMapping(value = "/pmapplylist.action", method = RequestMethod.GET)
	public String pmApplyList(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("pmapplylist", dao.pmapplylist());
		model.addAttribute("countpmapplylist", dao.countpmapplylist());

		return "WEB-INF/view/PmAppyList.jsp";
	}

	// 프리미엄 신청 관리
	@RequestMapping(value = "/pmslappcare.action", method = RequestMethod.GET)
	public String pmSlArtiCare(ModelMap model, HttpSession session)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		model.addAttribute("pmslappcare", dao.pmslappcare());
		model.addAttribute("countpmslappcare", dao.countpmslappcare());

		return "WEB-INF/view/PmSlAppCare.jsp";
	}

	// 프리미엄 접수가능 여부 체크
	@RequestMapping(value = "/pmapply.action", method = RequestMethod.GET)
	public String pmApply(ModelMap model, HttpSession session, HttpServletRequest req)
	{
		// 로그인 여부확인
		// 세션 반환형은 object 이므로 .equals 로 검사할려면 String으로 형변환이 필요함.
		// String admin_id = String.valueOf(session.getAttribute("admin_id"));
		if (session.getAttribute("admin_id") == null)
		{
			return "WEB-INF/view/AdLogin.jsp";
		}
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

		System.out.println(req.getParameter("apply"));
		//System.out.println();
		// model.addAttribute("pmslappcare", dao.pmslappcare());
		// model.addAttribute("countpmslappcare", dao.countpmslappcare());

		return "redirect:pmslappcare.action";
	}

	/*
	 * @RequestMapping(value="/memberlist.action", method=RequestMethod.GET)
	 * public String memberList(ModelMap model) { IMemberDAO dao =
	 * sqlSession.getMapper(IMemberDAO.class); model.addAttribute("count",
	 * dao.count()); model.addAttribute("list", dao.list());
	 * 
	 * return "WEB-INF/view/MemberList.jsp"; }
	 * 
	 * @RequestMapping(value="/memberinsert.action", method=RequestMethod.POST)
	 * public String memberInsert(MemberDTO m) { IMemberDAO dao =
	 * sqlSession.getMapper(IMemberDAO.class);
	 * 
	 * dao.add(m); return "redirect:memberlist.action"; }
	 * 
	 * @RequestMapping(value="/memberdelete.action", method=RequestMethod.GET)
	 * public String memberDelete(MemberDTO m) { IMemberDAO dao =
	 * sqlSession.getMapper(IMemberDAO.class); dao.remove(m);
	 * 
	 * return "redirect:memberlist.action"; }
	 */

}
