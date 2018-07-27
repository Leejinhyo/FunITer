package com.funiter.mypage;

public class SellListDTO
{
	private int rownum, nm_article_code, s_category_code, nm_price;
	private String nm_subject, s_category_name, nm_write_d, book_start_d, book_end_d;
	
	//getter/ setter 
	
	
	public int getRownum()
	{
		return rownum;
	}
	public String getS_category_name()
	{
		return s_category_name;
	}
	public void setS_category_name(String s_category_name)
	{
		this.s_category_name = s_category_name;
	}
	public String getBook_start_d()
	{
		return book_start_d;
	}
	public void setBook_start_d(String book_start_d)
	{
		this.book_start_d = book_start_d;
	}
	public String getBook_end_d()
	{
		return book_end_d;
	}
	public void setBook_end_d(String book_end_d)
	{
		this.book_end_d = book_end_d;
	}
	public void setRownum(int rownum)
	{
		this.rownum = rownum;
	}
	public int getNm_article_code()
	{
		return nm_article_code;
	}
	public void setNm_article_code(int nm_article_code)
	{
		this.nm_article_code = nm_article_code;
	}
	public int getS_category_code()
	{
		return s_category_code;
	}
	public void setS_category_code(int s_category_code)
	{
		this.s_category_code = s_category_code;
	}
	public int getNm_price()
	{
		return nm_price;
	}
	public void setNm_price(int nm_price)
	{
		this.nm_price = nm_price;
	}
	public String getNm_subject()
	{
		return nm_subject;
	}
	public void setNm_subject(String nm_subject)
	{
		this.nm_subject = nm_subject;
	}
	public String getNm_write_d()
	{
		return nm_write_d;
	}
	public void setNm_write_d(String nm_write_d)
	{
		this.nm_write_d = nm_write_d;
	}


}
