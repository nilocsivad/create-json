package com.iam_vip.create_json.business.transfer;

import java.io.Serializable;

public class ResModel implements Serializable {
	
	/**
	 * 
	 */
	private static final long	serialVersionUID	= -8784302359266912351L;
	/** Customer ID */
	private Integer				uid;
	/** Type 0: xml file 1: xml string */
	private Integer				type;
	/** Resource */
	private String				res;
	/** URL */
	private String				url;
	/** Status 0: delete 1: using */
	private Integer				status;
								
								
	/** construction */
	public ResModel() {}
	
	/** return table's name */
	public String getTableName() {
		return "res";
	}
	
	/**
	 * 获取 Customer ID
	 *
	 * @return Customer ID
	 */
	public Integer getUid() {
		return uid;
	}
	
	/**
	 * 设置 Customer ID
	 *
	 * @param uid Customer ID
	 */
	public void setUid( Integer uid ) {
		this.uid = uid;
	}
	
	/**
	 * 获取 Type 0: xml file 1: xml string
	 *
	 * @return Type 0: xml file 1: xml string
	 */
	public Integer getType() {
		return type;
	}
	
	/**
	 * 设置 Type 0: xml file 1: xml string
	 *
	 * @param type Type 0: xml file 1: xml string
	 */
	public void setType( Integer type ) {
		this.type = type;
	}
	
	/**
	 * 获取 Resource
	 *
	 * @return Resource
	 */
	public String getRes() {
		return res;
	}
	
	/**
	 * 设置 Resource
	 *
	 * @param res Resource
	 */
	public void setRes( String res ) {
		this.res = res;
	}
	
	/**
	 * 获取 URL
	 *
	 * @return URL
	 */
	public String getUrl() {
		return url;
	}
	
	/**
	 * 设置 URL
	 *
	 * @param url URL
	 */
	public void setUrl( String url ) {
		this.url = url;
	}
	
	/**
	 * 获取 Status 0: delete 1: using
	 *
	 * @return Status 0: delete 1: using
	 */
	public Integer getStatus() {
		return status;
	}
	
	/**
	 * 设置 Status 0: delete 1: using
	 *
	 * @param status Status 0: delete 1: using
	 */
	public void setStatus( Integer status ) {
		this.status = status;
	}
	
}
