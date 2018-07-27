package com.funiter.del;

public class DelguideDTO
{
	// 업체 회원가입 이용가이드
	
	// TBL_GUIDE (이용가이드)
	private int guide_code;		//-- 이용가이드번호 
	private String guide_pic;	//-- 사진1 
	
	public int getGuide_code()
	{
		return guide_code;
	}

	public void setGuide_code(int guide_code)
	{
		this.guide_code = guide_code;
	}

	public String getGuide_pic()
	{
		return guide_pic;
	}

	public void setGuide_pic(String guide_pic)
	{
		this.guide_pic = guide_pic;
	}
	
	
}
