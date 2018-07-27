/*============================
	NomarlRegistDTO.java
	- 일반게시글 작성 DTO
=============================*/
package com.test.mybatis;

public class NormalRegistDTO
{
	private String nm_subject, nm_price, nm_size, start_date, end_date, nm_pic1, nm_pic2
			, nm_pic3, nm_pic4, nm_content, l_cate, s_cate, option1, option2
			, user_code, type;
			
	
	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getUser_code()
	{
		return user_code;
	}

	public void setUser_code(String user_code)
	{
		this.user_code = user_code;
	}

	public String getNm_subject()
	{
		return nm_subject;
	}

	public void setNm_subject(String nm_subject)
	{
		this.nm_subject = nm_subject;
	}

	public String getNm_price()
	{
		return nm_price;
	}

	public void setNm_price(String nm_price)
	{
		this.nm_price = nm_price;
	}


	public String getStart_date()
	{
		return start_date;
	}

	public void setStart_date(String start_date)
	{
		this.start_date = start_date;
	}

	public String getEnd_date()
	{
		return end_date;
	}

	public void setEnd_date(String end_date)
	{
		this.end_date = end_date;
	}

	public String getNm_pic1()
	{
		return nm_pic1;
	}

	public void setNm_pic1(String nm_pic1)
	{
		this.nm_pic1 = nm_pic1;
	}

	public String getNm_pic2()
	{
		return nm_pic2;
	}

	public void setNm_pic2(String nm_pic2)
	{
		this.nm_pic2 = nm_pic2;
	}

	public String getNm_pic3()
	{
		return nm_pic3;
	}

	public void setNm_pic3(String nm_pic3)
	{
		this.nm_pic3 = nm_pic3;
	}

	public String getNm_pic4()
	{
		return nm_pic4;
	}

	public void setNm_pic4(String nm_pic4)
	{
		this.nm_pic4 = nm_pic4;
	}

	public String getNm_size()
	{
		return nm_size;
	}

	public void setNm_size(String nm_size)
	{
		this.nm_size = nm_size;
	}

	public String getNm_content()
	{
		return nm_content;
	}

	public void setNm_content(String nm_content)
	{
		this.nm_content = nm_content;
	}

	public String getL_cate()
	{
		return l_cate;
	}

	public void setL_cate(String l_cate)
	{
		this.l_cate = l_cate;
	}

	public String getS_cate()
	{
		return s_cate;
	}

	public void setS_cate(String s_cate)
	{
		this.s_cate = s_cate;
	}

	public String getOption1()
	{
		return option1;
	}

	public void setOption1(String option1)
	{
		this.option1 = option1;
	}

	public String getOption2()
	{
		return option2;
	}

	public void setOption2(String option2)
	{
		this.option2 = option2;
	}
	
	
}
