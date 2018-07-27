package com.funiter.del;

import java.util.ArrayList;


public interface IDelDAO
{
	public String delLogin(DelsignupDTO dto);
	public ArrayList<DelpaylistDTO> delpaylist(String del_id);
	public String delupdateLogin(DelsignupDTO dto);
	public ArrayList<DelsignupDTO> delupdate(String del_id);
	public int delupdate2(DelsignupDTO dto);
	public int delremove(DelsignupDTO dto);
	public ArrayList<DelsignupDTO> delsignup3again(String del_id);
	public ArrayList<DelpayDTO> delbankchoice();
	public int delpayadd(DelpayDTO dto);
	public int delsignupinfoinsert(DelsignupDTO dto);
	public ArrayList<DelsignupDTO>  delsignup3(String del_id);
	public int delsignupandpay(DelsignupDTO dto, DelpayDTO dto2);
	public int delsignup3gopay(DelpayDTO dto);
	public int delgopay(DelpayDTO dto);
	public int delsignupwithdraw(String del_id);
	//public int deljobschedule(Integer del_code);
	//public int deljobschedule(String del_code);
	
}
