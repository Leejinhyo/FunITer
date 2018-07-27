package com.test.mybatis;

public interface ICreate_AccountDAO
{
	//은행코드 선택하면, 계좌번호 반환하는 메소드 .
	public String getAccount(int bank_code);
}
