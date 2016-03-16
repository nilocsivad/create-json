/**
 * 
 */
package com.iam_vip.create_json.resource.define;

import com.google.gson.Gson;

/**
 * @author Colin
 */
public interface I {
	
	String	JSON_KEY		= "key";
	String	JSON_RESULT_KEY	= "result";
	String	JSON_EXTRA_KEY	= "extra";
							
	String	IMG_SUFFIX		= "jpg";
							
	String	PACKAGE_M		= "com.iam_vip.create_json.control.handle";
	String	SESSION_M		= "online";
							
	String	PACKAGE_V		= "com.iam_vip.create_json.control.view";
	String	SESSION_V		= "customer";
							
	String	PACKAGE			= "com.iam_vip.create_json.control.api";
							
	Gson	gson			= new Gson();
							
}
