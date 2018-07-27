package com.test.mybatis;

public interface FreeSellDAO
{
	// 무료나눔 상품 주문할 때, 인설트 해주는 메소드 
	public int freeOrder(FreeSellFormDTO dto);
	
	
}
