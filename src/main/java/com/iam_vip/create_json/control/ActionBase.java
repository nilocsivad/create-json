/**
 * 
 */
package com.iam_vip.create_json.control;

import javax.servlet.http.HttpServletRequest;

import com.iam_vip.create_json.resource.define.I;

/**
 * @author Colin
 * 		
 */
public class ActionBase implements I {
	
	/**
	 * 
	 */
	public ActionBase() {}
	
	
	private String URL;
	
	
	protected String base_url( HttpServletRequest request ) {
		
		return this.base_url( request, "" );
	}
	
	protected String base_url( HttpServletRequest request, String action ) {
		
		return this.base_url( request, action, "" );
	}
	
	protected String base_url( HttpServletRequest request, String action, String method ) {
		
		if ( URL == null ) {
			int port = request.getServerPort();
			URL = request.getScheme() + "://" + request.getServerName() + ( port == 80 ? "" : ":" + port );
			String path = request.getContextPath();
			URL = URL + ( URL.endsWith( "/" ) ? "" : "/" ) + ( path.startsWith( "/" ) ? path.substring( 1 ) : path );
		}
		return URL + ( URL.endsWith( "/" ) ? "" : "/" ) + action + ( method == null || method.equals( "" ) ? "" : "/" + method );
	}
	
	protected String url_suffix( HttpServletRequest request, String find ) {
		
		String uri = request.getRequestURI();
		return uri.substring( uri.indexOf( find ) + find.length() );
	}
	
}
