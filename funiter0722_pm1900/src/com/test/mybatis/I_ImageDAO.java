package com.test.mybatis;

import java.util.ArrayList;

public interface I_ImageDAO
{
	//게시글만 등록하는 메소드 
	public int fr_register(FreeSellFormDTO fdto);
	
	//게시글의 최대 번호 읽어오는 메소드. 
	public int check_num();
	
	//첨부파일 등록하는 메소드. 
	public int insertFile(BoardFileDTO fileDTO);
	
	
	//게시글 등록하는 메소드
	//public int insertDate(FreeSellFormDTO dto);
	
	// 게시글 리스트 조회하는 메소드 //거래분류 코드 넘겨 줄 것.
	// 거래분류 코드가 3 즉, 무료나눔일때만 조회해서 꾸릴 것. 
	public ArrayList<FreeSellFormDTO> getListDate(int arti_cate_code);
	
	
	// 게시글 읽어들이는 메소드 
	public ArrayList<FreeSellFormDTO> getReadData(int fr_article_code);
	
	
	public ArrayList<BoardFileDTO> getpic(int fr_article_code);
	
	
}
