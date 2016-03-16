import java.util.UUID;

/**
 * 
 */

/**
 * @author Colin
 */
public class JavaOut {
	
	/**
	 * 
	 */
	public JavaOut() {}
	
	/**
	 * @param args
	 */
	public static void main( String[] args ) {
		
		// System.getProperties().list( System.out );
		
		String uuid = UUID.randomUUID().toString();
		System.out.println( uuid + "\t" + uuid.length() );
		
	}
	
}
