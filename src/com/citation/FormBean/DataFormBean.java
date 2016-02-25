package com.citation.FormBean;

public class DataFormBean {
	
	
	private String title;
	private String datas;
	private String url;
	private int dataid;
	private int slideno;
	private int count;
	public int getSlideno() {
		return slideno;
	}
	public void setSlideno(int slideno) {
		this.slideno = slideno;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	private int countdata;
	public int getCountdata() {
		return countdata;
	}
	public void setCountdata(int countdata) {
		this.countdata = countdata;
	}
	public double getTf() {
		return tf;
	}
	public void setTf(double tf) {
		this.tf = tf;
	}
	public double getIdf() {
		return idf;
	}
	public void setIdf(double idf) {
		this.idf = idf;
	}
	private double tf;
	private double idf;
	private double total;
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getDataid() {
		return dataid;
	}
	public void setDataid(int dataid) {
		this.dataid = dataid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getDatas() {
		return datas;
	}
	public void setDatas(String datas) {
		this.datas = datas;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	private String cname;
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	private String categoryname;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	}
