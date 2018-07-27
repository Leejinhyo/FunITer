package com.funiter.admin;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.funiter.admin.AdminDTO;

public interface IAdminDAO
{
	public int logincheck(AdminDTO dto);
	public ArrayList<NmArtiSlDTO> nmarti();
	public int countnmarti();
	public ArrayList<FrArtiSlDTO> frarti();
	public int countfrarti();
	public ArrayList<HideArtiDTO> hidearti();
	public int counthidearti();
	public ArrayList<DealingArtiDTO> dealingarti();
	public int countdealingarti();
	public ArrayList<DealComplArtiDTO> dealcomplarti();
	public int countdealcomplarti();
	public ArrayList<PmAllListDTO> pmalllist();
	public int countpmalllist();
	public int nmhide(@Param("nm_arti_code") int nm_arti_code,@Param("admin_code") int admin_code);
	public int nmnonhide(@Param("nm_arti_code") int nm_arti_code, @Param("admin_code") int admin_code);
	public int frhide(@Param("fr_arti_code") int fr_arti_code,@Param("admin_code") int admin_code);
	public int frnonhide(@Param("fr_arti_code") int fr_arti_code, @Param("admin_code") int admin_code);
	public int exchangeadmincode(String admin_id);
	public ArrayList<PmApplyListDTO> pmapplylist();
	public int countpmapplylist();
	public ArrayList<PmSlAppCareDTO> pmslappcare();
	public int countpmslappcare();
}
