package com.funiter.mypage;

import java.util.ArrayList;

public interface ISellListDAO
{
	//나의 구매냐역 출력하는 메소드.
	public ArrayList<SellListDTO> lists(int user_code);
}
