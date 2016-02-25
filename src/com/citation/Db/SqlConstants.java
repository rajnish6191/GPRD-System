package com.citation.Db;

public class SqlConstants {
	
	
	public static final String _UPLOAD_WEBPAGE="insert into uploaddata values((select nvl(max(dataid),1010)+1 from uploaddata),?,?,?)";
	
	public static final String _GET_WEBPAGE="select wid,wname,ctitle,cdescription,ccompany,ccategory,ccode,cimage,color,TO_CHAR(uldate,'DD-MM-YYYY'),price from webpage";

	public static final String _GET_WEBPAGE_AT="select wid,wname,ctitle,cdescription,ccompany,ccategory,ccode,cimage,color,TO_CHAR(uldate,'DD-MM-YYYY'),price from webpage where cname=? and wname=?";

	public static final String _GET_WEBPAGE_FROM="select wid,wname,ctitle,cdescription,ccompany,ccategory,ccode,cimage,color,TO_CHAR(uldate,'DD-MM-YYYY'),price from webpage where ctitle=? and wname=?";

}
