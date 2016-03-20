/**
 * 
 */


import java.lang.reflect.Field;

import org.junit.Test;

import com.iam_vip.create_json.business.transfer.LoginModel;

/**
 * @author Colin
 * 		
 */
public class InvokeOut {
	
	/**
	 * 
	 */
	public InvokeOut() {}
	
	@Test
	public void uuid() {
		
		Object obj = new LoginModel();
		Class< ? > cls = obj.getClass();
		Field[] fields = cls.getDeclaredFields();
		
		for ( Field field : fields ) {
			System.out.println( field.getName() + "," );
		}
		System.out.println( "==================================" );
		
		for ( Field field : fields ) {
			System.out.println( "#{sr." + field.getName() + "}," );
		}
		System.out.println( "==================================" );
		
		for ( Field field : fields ) {
			System.out.println( "#{" + field.getName() + "}," );
		}
		System.out.println( "==================================" );
		
		for ( Field field : fields ) {
			System.out.print( "\"" + field.getName() + "\"," );
		}
		System.out.println( "==================================" );
		
		for ( Field field : fields ) {
			String f = field.getName();
			System.out.println( String.format( "<if test=\"%s != null and %s != ''\"> AND %s = #{%s} </if>", f, f, f, f ) );
		}
	}
	
}
