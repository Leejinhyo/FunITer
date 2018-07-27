package com.test.mybatis;

import org.apache.ibatis.annotations.Param;

public interface IUserDAO
{
	//입력하는 메소드
	public int userinsert(UserDTO dto);
	
	//회원가입 시, 당장 그 코드 조회하는 메소드.//맨 마지막 코드만 가져오면 되는데.  
	public int searchCode();
	
	//세션 유지하기 위해 코드를 반환하는 메소드 정의
	public int logincheck(UserDTO dto);
	
	//코드로 넘겨주면, 이름 받아오는 메소드 정의
	//public String searchName(@Param("user_code") int user_code, @Param("name") int name); : 만약에 두 개 넘길 때! 
	public String searchName(int user_code);
	
	//아이디 입력하면, 코드로 반환해주는 메소드 정의
	public int code(String user_id);
	
	//이름, 전화번호 넘겨서, 사용자의 정보 있는지 부터 체크 메소드 정의
	public int checkId(UserDTO dto);
	
	//코드 넘겨주면, 그 회원 정보 가져오는 메소드 정의
	public UserDTO getInfo(int user_code);
	
	//아이디 찾기 할 때, 데이터 출력하는 메소드 정의. 
    public UserDTO lists(UserDTO dto);
	
	//비밀번호 찾기 할 때, 데이터 출력하는 메소드 정의. 
    public UserDTO pwlists(UserDTO dto);
    
    //비밀번호 바꿀 때, update 구문 실행. 
    public int pwchange(UserDTO dto);
	
}
