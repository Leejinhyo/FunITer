/*========================
 * 무료나눔 주문 DTO 구성. 
 *========================= */

package com.test.mybatis;

public class Free_OrderDTO
{
	//무료나눔 주문 객체 생성. 
	// 단, 주문에서 다시 취소될 수 있으니. 최소한의 데이터만 받는다. 
	private String fr_subject, fr_write_d, bank_name, del_name;
	private int fr_order_code, fr_article_code, seller, account_crt_code, account_num, del_way_code, buye;
	
	
	public String getFr_subject()
	{
		return fr_subject;
	}
	public void setFr_subject(String fr_subject)
	{
		this.fr_subject = fr_subject;
	}
	public String getFr_write_d()
	{
		return fr_write_d;
	}
	public void setFr_write_d(String fr_write_d)
	{
		this.fr_write_d = fr_write_d;
	}
	public String getBank_name()
	{
		return bank_name;
	}
	public void setBank_name(String bank_name)
	{
		this.bank_name = bank_name;
	}
	public String getDel_name()
	{
		return del_name;
	}
	public void setDel_name(String del_name)
	{
		this.del_name = del_name;
	}
	public int getFr_order_code()
	{
		return fr_order_code;
	}
	public void setFr_order_code(int fr_order_code)
	{
		this.fr_order_code = fr_order_code;
	}
	public int getFr_article_code()
	{
		return fr_article_code;
	}
	public void setFr_article_code(int fr_article_code)
	{
		this.fr_article_code = fr_article_code;
	}
	public int getSeller()
	{
		return seller;
	}
	public void setSeller(int seller)
	{
		this.seller = seller;
	}
	public int getAccount_crt_code()
	{
		return account_crt_code;
	}
	public void setAccount_crt_code(int account_crt_code)
	{
		this.account_crt_code = account_crt_code;
	}
	public int getAccount_num()
	{
		return account_num;
	}
	public void setAccount_num(int account_num)
	{
		this.account_num = account_num;
	}
	public int getDel_way_code()
	{
		return del_way_code;
	}
	public void setDel_way_code(int del_way_code)
	{
		this.del_way_code = del_way_code;
	}
	public int getBuye()
	{
		return buye;
	}
	public void setBuye(int buye)
	{
		this.buye = buye;
	}
	
	
	
	
}
