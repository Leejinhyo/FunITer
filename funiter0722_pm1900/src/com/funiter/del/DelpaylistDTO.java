package com.funiter.del;

public class DelpaylistDTO
{
	// 업체 정기 결제 내역
	
	// TBL_DELIVER_PAYLIST (업체 결제 내역)
	private int del_paylist_code, del_code, rownum;	
	//-- 업체결제내역번호, 업체 번호
	private String transefer_d, service_start_d, service_end_d
	, etc, del_change_d, service_term, sysdate;
	// 이체일, 서비스 시작일, 서비스종료일, 비고, 상태변경일
	
	
	
	public String getSysdate()
	{
		return sysdate;
	}
	public int getDel_code()
	{
		return del_code;
	}
	public void setDel_code(int del_code)
	{
		this.del_code = del_code;
	}
	public void setSysdate(String sysdate)
	{
		this.sysdate = sysdate;
	}
	public String getService_term()
	{
		return service_term;
	}
	public void setService_term(String service_term)
	{
		this.service_term = service_term;
	}
	public String getEtc()
	{
		return etc;
	}
	public void setEtc(String etc)
	{
		this.etc = etc;
	}
	public int getRownum()
	{
		return rownum;
	}
	public void setRownum(int rownum)
	{
		this.rownum = rownum;
	}
	
	public String getService_start_d()
	{
		return service_start_d;
	}
	public void setService_start_d(String service_start_d)
	{
		this.service_start_d = service_start_d;
	}
	public String getService_end_d()
	{
		return service_end_d;
	}
	public void setService_end_d(String service_end_d)
	{
		this.service_end_d = service_end_d;
	}
	
	public String getDel_change_d()
	{
		return del_change_d;
	}
	public void setDel_change_d(String del_change_d)
	{
		this.del_change_d = del_change_d;
	}
	public int getDel_paylist_code()
	{
		return del_paylist_code;
	}
	public void setDel_paylist_code(int del_paylist_code)
	{
		this.del_paylist_code = del_paylist_code;
	}
	public String getTransefer_d()
	{
		return transefer_d;
	}
	public void setTransefer_d(String transefer_d)
	{
		this.transefer_d = transefer_d;
	}
	
	
	
	
	
	
}
