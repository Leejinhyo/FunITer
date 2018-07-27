package com.test.mybatis;

public class Create_AccountDTO
{
	//어쨌든, 얘가 다 포괄하고 있다고 보면 됨. 
	private int account_crt_code, bank_code;
	private String account_num, bank_name;
	
	//getter/ setter 
	
	public int getAccount_crt_code()
	{
		return account_crt_code;
	}
	public String getBank_name()
	{
		return bank_name;
	}
	public void setBank_name(String bank_name)
	{
		this.bank_name = bank_name;
	}
	public void setAccount_crt_code(int account_crt_code)
	{
		this.account_crt_code = account_crt_code;
	}
	public int getBank_code()
	{
		return bank_code;
	}
	public void setBank_code(int bank_code)
	{
		this.bank_code = bank_code;
	}
	public String getAccount_num()
	{
		return account_num;
	}
	public void setAccount_num(String account_num)
	{
		this.account_num = account_num;
	}
	
	

}
