/**
 * 
 */
package com.iam_vip.create_json.resource.utilization;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author Colin
 */
public class PasswordUtil {
	
	public static final String TYPE_MD5 = "MD5";
	
	
	/**
	 * 
	 */
	public PasswordUtil() {}
	
	public static String getMD5( final String text ) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		
		if ( text == null || text.equals( "" ) ) { throw new IllegalArgumentException( "Parameter text is empty or null!" ); }
		
		MessageDigest md = MessageDigest.getInstance( TYPE_MD5 );
		byte[] bytes = md.digest( text.getBytes( "UTF-8" ) );
		
		StringBuffer buf = new StringBuffer();
		for ( byte b : bytes ) {
			int n = b & 0xFF;
			String s = Integer.toHexString( n );
			buf.append( n > 15 ? s : "0" + s );
		}
		return buf.toString().toUpperCase();
	}
	
}
