/**
 * 
 */
package com.iam_vip.create_json.resource.utilization;


/**
 * @author Colin
 */
public class ConfigUtil {
	
	private static String	f4xml_;
	private static int		limit_	= 20;
									
									
	/**
	 * 
	 */
	public ConfigUtil( String f4xml, Integer limit ) {
		setf4xml_( f4xml );
		limit_ = limit;
	}
	
	/**
	 * @return the _f4xml_
	 */
	private static void setf4xml_( String f4xml ) {
		String os = System.getProperty( "os.name" );
		String[] arr = f4xml.split( "\\*" );
		f4xml_ = os.equalsIgnoreCase( "Windows" ) ? arr[ 0 ].trim().split( "\\?" )[ 1 ] : arr[ 1 ].trim().split( "\\?" )[ 1 ];
	}
	
	/**
	 * @return the _f4xml_
	 */
	public static String getf4xml_() {
		return f4xml_;
	}
	
	/**
	 * @return the limit_
	 */
	public static int getLimit_() {
		return limit_;
	}
	
}
