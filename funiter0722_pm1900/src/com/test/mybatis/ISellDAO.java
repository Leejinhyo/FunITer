package com.test.mybatis;

import java.util.ArrayList;

public interface ISellDAO
{
	//여기서 sell 관련 메소드 정의 
	
	//1. 대분류 출력 리스트 
	public ArrayList<L_cateDTO> l_list();
	
	//2. 대분류 넘겨줬을 때, 동적으로 변하게 하는 소분류 리스트
	public ArrayList<S_cateDTO> s_list(int l_category_code);

	// 옵션 1에 대한 필터 출력, 단 소분류 넘겨줬을 때
	public ArrayList<Option1DTO> filter1(int s_category_code);
	
	// 옵션 2에 대한 필터 출력, 단 소분류 넘겨줬을 때
	public ArrayList<Option2DTO> filter2(int s_category_code);
	
	public ArrayList<S_cateDTO> slist();
	
	
	// 일반 게시글 작성
	public int normal_insert(NormalRegistDTO dto);

	// 일반 게시글 리스트 출력
	public ArrayList<NormalListDTO> normal_list();
	// 일반 게시글 내용 가져오기
	public NormalArticleContentDTO normal_article_content(String nm_article_code);
	
	//일반 게시글 구매중 여부 체크하는 메소드. 
	public int nm_buy_whether(int nm_article_code);
	
	// 일반거래 주문하는 인설트 메소드. 
	public int nm_order_insert(NM_OrderDTO nm_order_dto);
	
	//일반거래 주문 시, 주문번호 반환 메소드. 
	public int getOrderCode(NM_OrderDTO dto);
	
	//일반거래 주문 조회 메소드
	public NM_OrderDTO nm_order_list(int order_code);
	
	
	//==========일반 영역. 
	
	
	// 무료나눔 게시글 작성
	public int free_insert(FreeSellFormDTO fdto);
	
	// 무료나눔 게시글 출력
	public ArrayList<FreeListDTO> free_list();
	
	
	// 무료나눔 게시글 읽어들이는 메소드 
	public FreeSellFormDTO getReadData(int fr_article_code);

	
}
