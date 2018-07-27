package com.funiter.mypage;

import java.util.ArrayList;


public interface IBuyListDAO
{
	//구매내역 조회하는 메소드
	public ArrayList<BuyListDTO> lists(int user_code);
	
	//입금했는지 여부 체크하는 메소드.
	public int getday(int nm_article_code);
	
}
