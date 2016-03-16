/**
 * 
 */
package com.iam_vip.create_json.resource.utilization;

import java.util.List;

/**
 * @author Colin
 */
public class MethodUtil {
	
	private static List< String > methods_;
	
	
	/**
	 * 
	 */
	public MethodUtil( List< String > methods ) {
		methods_ = methods;
	}
	
	/**
	 * @return the methods
	 */
	public static List< String > getMethods() {
		return methods_;
	}
	
}
