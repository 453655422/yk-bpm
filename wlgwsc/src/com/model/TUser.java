package com.model;

import java.util.Date;

/**
 * TUser generated by MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable
{

	// Fields

	private Integer userId;

	private String userName;

	private String userPw;

	private int userType;

	private String userRealname;

	private String userAddress;

	private String userSex;

	private String userTel;

	private String userEmail;

	private String userQq;

	
	
	private String userDel;
	
	
	
	private String status;

	// Constructors

	/** default constructor */
	public TUser()
	{
	}

	/** full constructor */
	public TUser(String userName, String userPw, int userType,
			String userRealname, String userAddress, String userSex,
			String userTel, String userEmail, String userQq, String status)
	{
		this.userName = userName;
		this.userPw = userPw;
		this.userType = userType;
		this.userRealname = userRealname;
		this.userAddress = userAddress;
		this.userSex = userSex;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userQq = userQq;
		this.status = status;
	}

	// Property accessors

	public Integer getUserId()
	{
		return this.userId;
	}
	

	public String getUserDel()
	{
		return userDel;
	}

	public void setUserDel(String userDel)
	{
		this.userDel = userDel;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	public int getUserType()
	{
		return userType;
	}

	public void setUserType(int userType)
	{
		this.userType = userType;
	}

	public String getUserName()
	{
		return this.userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getUserPw()
	{
		return this.userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}


	public String getUserRealname()
	{
		return this.userRealname;
	}

	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}

	public String getUserAddress()
	{
		return this.userAddress;
	}

	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}

	public String getUserSex()
	{
		return this.userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserTel()
	{
		return this.userTel;
	}

	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}

	public String getUserEmail()
	{
		return this.userEmail;
	}

	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}

	public String getUserQq()
	{
		return this.userQq;
	}

	public void setUserQq(String userQq)
	{
		this.userQq = userQq;
	}























	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}