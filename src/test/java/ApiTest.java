/**
 * 
 */


import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

/**
 * @author Colin
 */
@WebAppConfiguration
@RunWith( SpringJUnit4ClassRunner.class )
@ContextConfiguration( locations = { "classpath:config/spring-config.xml", "classpath:config/spring-servlet.xml" } )
public class ApiTest {
	
	
	@Autowired private WebApplicationContext wac;
	
	
	/**
	 * 
	 */
	public ApiTest() {}
	
	
	private MockMvc mvc;
	
	
	@Before
	public void init() {
		
		mvc = MockMvcBuilders.webAppContextSetup( wac ).build();
	}
	
	@Test
	public void run() throws Exception {
		
		// String token = "a43ae450-96cd-41a0-af02-5e355b64cec9";
		// String url_suffix = "/animal";
		// this.executeGetMethod( "/api/json/get/" + token + url_suffix );
		// this.executeGetMethod( "/api/db/list" );
		// this.executeGetMethod( "/api/token/new" );
		// this.executeGetMethod( "/api/json/list/p/" + token + "/" + 2 + "/" + 30 + url_suffix );
		// this.executeGetMethod( "/api/table/list/1/2/3/4/5" );
		// String table = "tbl_4_http";
		// this.readSQL2_CreateTable( token, table, url_suffix );
		// Thread.sleep( 1000 );
		
		Map< String, String > params = new HashMap< String, String >( 2 );
		// // params.put( "ln", "helloYou" );
		// params.put( "pwd", "2016world" );
		params.put( "uname", "张三" );
		params.put( "lname", "2016world" );
		params.put( "lpwd", "2016world" );
		this.executePostMethod( "/member/do/register", params );
		// this.executePostMethod( "/api/token/get/" + ( "helloYou" ), params );
		// Thread.sleep( 1000 );
		// this.executePostMethod( "/api/token/get/" + ( "hello2016/60" ), params );
		
		
		
		
	}
	
	public void executePostMethod( String url ) throws Exception {
		
		this.executePostMethod( url, null );
	}
	
	public void executePostMethod( String url, Map< String, String > params ) throws Exception {
		
		MockHttpServletRequestBuilder rb = MockMvcRequestBuilders.post( url );
		if ( params != null && !params.isEmpty() ) {
			for ( Map.Entry< String, String > item : params.entrySet() )
				rb.param( item.getKey(), item.getValue() );
		}
		
		MvcResult result = mvc.perform( rb ).andReturn();
		System.out.println( "Response: " + result.getResponse().getContentAsString() );
	}
	
	public void executeGetMethod( String url ) throws Exception {
		
		this.executeGetMethod( url, null );
	}
	
	public void executeGetMethod( String url, Map< String, String > params ) throws Exception {
		
		MockHttpServletRequestBuilder rb = MockMvcRequestBuilders.get( url );
		if ( params != null && !params.isEmpty() ) {
			for ( Map.Entry< String, String > item : params.entrySet() )
				rb.param( item.getKey(), item.getValue() );
		}
		
		MvcResult result = mvc.perform( rb ).andReturn();
		int status = result.getResponse().getStatus();
		System.out.println( "- " + status );
		System.out.println( "Response: " + result.getResponse().getContentAsString() );
	}
	
	public void readSQL2_CreateTable( String token, String table, String url_suffix ) throws Exception {
		
		BufferedReader reader = new BufferedReader( new FileReader( "E:\\tmp\\t-table.sql" ) );
		reader.readLine();
		
		String line = null;
		StringBuffer buf = new StringBuffer( 48 );
		while ( ( line = reader.readLine() ) != null ) {
			buf.append( line + " " );
			line = null;
		}
		reader.close();
		
		String sql = buf.toString();
		System.out.println( sql );
		
		MvcResult result = mvc.perform( MockMvcRequestBuilders.get( "/api/table/new/" + token + "/" + table ).param( "columns", sql ).param( "url_suffix", url_suffix ) ).andReturn();
		System.out.println( result.getResponse().getContentAsString() );
	}
	
}
