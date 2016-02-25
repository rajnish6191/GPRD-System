package com.citation.Factory;

import com.citation.Dao.DataDao;

public class DBFactory {
private static  DataDao userDao=new DataDao();
private DBFactory()
{
	
}
public static DataDao getInstance()
{
	return userDao;
}
}
