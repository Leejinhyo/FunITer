package com.test.mybatis;

import java.util.ArrayList;

public interface IDwayDAO
{
	//배송정보 출력하는 메소드
	public ArrayList<DwayDTO> lists();
	
	//배송코드 넘기면 배송정보 반환하는 메소드. 
	public String getDel(int del_way_code);
}
