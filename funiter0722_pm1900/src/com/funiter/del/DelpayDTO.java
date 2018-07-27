package com.funiter.del;

public class DelpayDTO
{
	// 업체 결제
	
	// TBL_DELIVER (업체)
	private String del_id, del_name, del_lisence, del_tel;
	//-- 아이디, 업체명, 사업자등록번호, 사업자전화번호
	
	// TBL_DELIVER_PAY (업체 결제)
	private int del_code, bank_code, del_pay_code;
	private String del_pay_start_d, del_account, del_account_owner;
	//-- 업체번호, 은행코드, 결제시작일, 계좌번호, 예금주
	
	// TBL_BANK (은행)
	private String bank_name;
	//-- 은행명

	// 결제 창에 띄우기 위한. 이체일(현재날짜), 다음이체일(30일 후)
	private String sysdate, nextpaydate;
	
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
	
	public String getDel_id()
	{
		return del_id;
	}

	public int getDel_pay_code()
	{
		return del_pay_code;
	}

	public void setDel_pay_code(int del_pay_code)
	{
		this.del_pay_code = del_pay_code;
	}

	public void setDel_id(String del_id)
	{
		this.del_id = del_id;
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

	public String getDel_tel()
	{
		return del_tel;
	}

	public void setDel_tel(String del_tel)
	{
		this.del_tel = del_tel;
	}

	public int getDel_code()
	{
		return del_code;
	}

	public void setDel_code(int del_code)
	{
		this.del_code = del_code;
	}

	public int getBank_code()
	{
		return bank_code;
	}

	public void setBank_code(int bank_code)
	{
		this.bank_code = bank_code;
	}

	public String getDel_pay_start_d()
	{
		return del_pay_start_d;
	}

	public void setDel_pay_start_d(String del_pay_start_d)
	{
		this.del_pay_start_d = del_pay_start_d;
	}

	public String getDel_account()
	{
		return del_account;
	}

	public void setDel_account(String del_account)
	{
		this.del_account = del_account;
	}

	public String getDel_account_owner()
	{
		return del_account_owner;
	}

	public void setDel_account_owner(String del_account_owner)
	{
		this.del_account_owner = del_account_owner;
	}

	public String getBank_name()
	{
		return bank_name;
	}

	public void setBank_name(String bank_name)
	{
		this.bank_name = bank_name;
	}

	
	
	
	
	
	
}
