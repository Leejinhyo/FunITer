package com.test.mybatis;

import java.util.ArrayList;

public interface IS_cateDAO
{
	public ArrayList<S_cateDTO> list();
	public ArrayList<S_cateDTO> search(String result);
}

