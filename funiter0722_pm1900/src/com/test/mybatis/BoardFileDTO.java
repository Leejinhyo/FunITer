package com.test.mybatis;

public class BoardFileDTO
{
	private int boardfile_code, article_code;
	private String savefilepath ,pic;
	
	//getter / setter 
	public int getBoardfile_code()
	{
		return boardfile_code;
	}
	public void setBoardfile_code(int boardfile_code)
	{
		this.boardfile_code = boardfile_code;
	}
	public int getArticle_code()
	{
		return article_code;
	}
	public void setArticle_code(int article_code)
	{
		this.article_code = article_code;
	}

	public String getSavefilepath()
	{
		return savefilepath;
	}
	public void setSavefilepath(String savefilepath)
	{
		this.savefilepath = savefilepath;
	}
	public String getPic()
	{
		return pic;
	}
	public void setPic(String pic)
	{
		this.pic = pic;
	}
	
	
}
