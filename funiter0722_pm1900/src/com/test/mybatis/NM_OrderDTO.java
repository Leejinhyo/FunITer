package com.test.mybatis;

public class NM_OrderDTO
{
	private int order_code, nm_article_code, user_code, del_way_code, account_crt_code;
	private String nm_order_d, last_d, user_addr, detail_addr, booked_d ;
	private int bank_code;
	
	//getter/ setter 
	
	public int getBank_code()
	{
		return bank_code;
	}

	public void setBank_code(int bank_code)
	{
		this.bank_code = bank_code;
	}

	public int getOrder_code()
	{
		return order_code;
	}
	
	public String getBooked_d()
	{
		return booked_d;
	}

	public void setBooked_d(String booked_d)
	{
		this.booked_d = booked_d;
	}

	public String getUser_addr()
	{
		return user_addr;
	}
	public void setUser_addr(String user_addr)
	{
		this.user_addr = user_addr;
	}
	public String getDetail_addr()
	{
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr)
	{
		this.detail_addr = detail_addr;
	}
	public String getLast_d()
	{
		return last_d;
	}
	public void setLast_d(String last_d)
	{
		this.last_d = last_d;
	}
	public void setOrder_code(int order_code)
	{
		this.order_code = order_code;
	}
	public int getNm_article_code()
	{
		return nm_article_code;
	}
	public void setNm_article_code(int nm_article_code)
	{
		this.nm_article_code = nm_article_code;
	}
	public int getUser_code()
	{
		return user_code;
	}
	public void setUser_code(int user_code)
	{
		this.user_code = user_code;
	}
	public int getDel_way_code()
	{
		return del_way_code;
	}
	public void setDel_way_code(int del_way_code)
	{
		this.del_way_code = del_way_code;
	}
	public String getNm_order_d()
	{
		return nm_order_d;
	}
	public void setNm_order_d(String nm_order_d)
	{
		this.nm_order_d = nm_order_d;
	}
	public int getAccount_crt_code()
	{
		return account_crt_code;
	}
	public void setAccount_crt_code(int account_crt_code)
	{
		this.account_crt_code = account_crt_code;
	}
	
	
	
	
}
