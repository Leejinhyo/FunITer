package com.test.mybatis;

import java.util.ArrayList;

public interface IBankDAO
{
	// 전체 내용 출력하는 메소드.
	public ArrayList<BankDTO> list();
	
	// 은행코드 넘겨주면, 그 Create_AccountDTO.java DTO 타입으로 반환하는 메소드. 
	public Create_AccountDTO getAccount(int bank_code);
	
	
}
