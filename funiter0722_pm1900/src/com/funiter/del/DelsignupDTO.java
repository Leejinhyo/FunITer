package com.funiter.del;

public class DelsignupDTO
{
	// 업체 회원가입 입력
	
	// TBL_DELIVER (업체)
	private int del_code;
	private String del_id, del_pw, del_name, del_lisence
	, del_owner, del_tel, del_loc, url, introduce;
	//-- 아이디, 비밀번호, 업체명, 사업자등록번호
	//-- 사업주명, 사업자전화번호, 광역시도
	//-- 홈페이지URL, 홍보내용

	// 조회를 하기 위해 분절한 값들 (폰번호, 등록번호)
	private String del_tel1, del_tel2, del_tel3;
	private String del_lisence1, del_lisence2;
	
	// 결제 창에 띄우기 위한. 이체일(현재날짜), 다음이체일(30일 후)
	private String sysdate, nextpaydate;
	
	
	
	public int getDel_code()
	{
		return del_code;
	}

	public void setDel_code(int del_code)
	{
		this.del_code = del_code;
	}

	public String getNextpaydate()
	{
		return nextpaydate;
	}

	public void setNextpaydate(String nextpaydate)
	{
		this.nextpaydate = nextpaydate;
	}

	public String getSysdate()
	{
		return sysdate;
	}

	public void setSysdate(String sysdate)
	{
		this.sysdate = sysdate;
	}


	public String getDel_lisence1()
	{
		return del_lisence1;
	}

	public void setDel_lisence1(String del_lisence1)
	{
		this.del_lisence1 = del_lisence1;
	}

	public String getDel_lisence2()
	{
		return del_lisence2;
	}

	public void setDel_lisence2(String del_lisence2)
	{
		this.del_lisence2 = del_lisence2;
	}


	public String getDel_tel1()
	{
		return del_tel1;
	}

	public void setDel_tel1(String del_tel1)
	{
		this.del_tel1 = del_tel1;
	}

	public String getDel_tel2()
	{
		return del_tel2;
	}

	public void setDel_tel2(String del_tel2)
	{
		this.del_tel2 = del_tel2;
	}

	public String getDel_tel3()
	{
		return del_tel3;
	}

	public void setDel_tel3(String del_tel3)
	{
		this.del_tel3 = del_tel3;
	}

	public String getDel_id()
	{
		return del_id;
	}

	public void setDel_id(String del_id)
	{
		this.del_id = del_id;
	}

	public String getDel_pw()
	{
		return del_pw;
	}

	public void setDel_pw(String del_pw)
	{
		this.del_pw = del_pw;
	}

	public String getDel_name()
	{
		return del_name;
	}

	public void setDel_name(String del_name)
	{
		this.del_name = del_name;
	}

	public String getDel_lisence()
	{
		return del_lisence;
	}

	public void setDel_lisence(String del_lisence)
	{
		this.del_lisence = del_lisence;
	}

	public String getDel_owner()
	{
		return del_owner;
	}

	public void setDel_owner(String del_owner)
	{
		this.del_owner = del_owner;
	}

	public String getDel_tel()
	{
		return del_tel;
	}

	public void setDel_tel(String del_tel)
	{
		this.del_tel = del_tel;
	}

	public String getDel_loc()
	{
		return del_loc;
	}

	public void setDel_loc(String del_loc)
	{
		this.del_loc = del_loc;
	}

	public String getUrl()
	{
		return url;
	}

	public void setUrl(String url)
	{
		this.url = url;
	}

	public String getIntroduce()
	{
		return introduce;
	}

	public void setIntroduce(String introduce)
	{
		this.introduce = introduce;
	}
	
	
	
	
}
