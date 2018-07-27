package com.funiter.mypage;

public class BuyListDTO
{
	private int order_code, nm_article_code, nm_price, limit_day;
	private String rownum, s_category_name, nm_subject, del_way_name, booked_d, nm_order_d, last_d;

	// getter / setter 
	
	
	public String getBooked_d()
	{
		return booked_d;
	}


	public int getLimit_day()
	{
		return limit_day;
	}


	public void setLimit_day(int limit_day)
	{
		this.limit_day = limit_day;
	}


	public String getLast_d()
	{
		return last_d;
	}

	public void setLast_d(String last_d)
	{
		this.last_d = last_d;
	}

	public String getRownum()
	{
		return rownum;
	}

	public void setRownum(String rownum)
	{
		this.rownum = rownum;
	}

	public void setBooked_d(String booked_d)
	{
		this.booked_d = booked_d;
	}

	public String getNm_order_d()
	{
		return nm_order_d;
	}

	public void setNm_order_d(String nm_order_d)
	{
		this.nm_order_d = nm_order_d;
	}


	public int getOrder_code()
	{
		return order_code;
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

	public int getNm_price()
	{
		return nm_price;
	}

	public void setNm_price(int nm_price)
	{
		this.nm_price = nm_price;
	}

	public String getS_category_name()
	{
		return s_category_name;
	}

	public void setS_category_name(String s_category_name)
	{
		this.s_category_name = s_category_name;
	}

	public String getNm_subject()
	{
		return nm_subject;
	}

	public void setNm_subject(String nm_subject)
	{
		this.nm_subject = nm_subject;
	}

	public String getDel_way_name()
	{
		return del_way_name;
	}

	public void setDel_way_name(String del_way_name)
	{
		this.del_way_name = del_way_name;
	}
	
	
	

}
