package com.test.mybatis;

public class FavorDTO
{
	private int user_code, like_item1,like_item2,like_item3;

	//getter / setter 구성. 
	public int getUser_code()
	{
		return user_code;
	}

	public void setUser_code(int user_code)
	{
		this.user_code = user_code;
	}

	public int getLike_item1()
	{
		return like_item1;
	}

	public void setLike_item1(int like_item1)
	{
		this.like_item1 = like_item1;
	}

	public int getLike_item2()
	{
		return like_item2;
	}

	public void setLike_item2(int like_item2)
	{
		this.like_item2 = like_item2;
	}

	public int getLike_item3()
	{
		return like_item3;
	}

	public void setLike_item3(int like_item3)
	{
		this.like_item3 = like_item3;
	}
	
	
}
