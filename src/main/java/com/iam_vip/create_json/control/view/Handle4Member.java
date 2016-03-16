/**
 * 
 */
package com.iam_vip.create_json.control.view;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.iam_vip.create_json.business.idefine.ICustomer;
import com.iam_vip.create_json.business.idefine.ILogin;
import com.iam_vip.create_json.business.transfer.CustomerModel;
import com.iam_vip.create_json.business.transfer.LoginModel;
import com.iam_vip.create_json.control.ActionRedirect;
import com.iam_vip.create_json.resource.utilization.PasswordUtil;

/**
 * @author Colin
 */
@Controller
@RequestMapping( value = "member" )
public class Handle4Member extends ActionRedirect {
	
	@Autowired private ILogin		ilogin;
	@Autowired private ICustomer	icustomer;
									
									
	/**
	 * 
	 */
	public Handle4Member() {}
	
	@RequestMapping( value = "to/login" )
	public ModelAndView toLogin( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) {
		return new ModelAndView( VIEW + "login", model );
	}
	
	@RequestMapping( value = "do/login" )
	public ModelAndView doLogin( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model, String lname, String lpwd ) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		
		LoginModel l = new LoginModel();
		l.setLname( lname );
		l.setLpwd( PasswordUtil.getMD5( lpwd ) );
		
		return new ModelAndView( REDIRECT + VIEW + "login", model );
	}
	
	@RequestMapping( value = "to/register" )
	public ModelAndView toRegister( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model, String uname, String lname ) {
		return new ModelAndView( VIEW + "register", model );
	}
	
	@RequestMapping( value = "do/register" )
	public ModelAndView doRegister( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model, RedirectAttributes attr, String uname, String lname, String lpwd ) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		
		LoginModel l = new LoginModel();
		l.setLname( lname );
		
		CustomerModel c = new CustomerModel();
		c.setUname( uname );
		
		int len = ilogin.countItem( l );
		if ( len > 0 ) {
			attr.addFlashAttribute( "lname", lname ).addFlashAttribute( "uname", uname ).addFlashAttribute( "message", "当前邮箱已被占用" );
			return new ModelAndView( REDIRECT + "/member/to/register", model );
		}
		
		l.setStatus( 0 ); // 0:未验证
		l.setLpwd( PasswordUtil.getMD5( lpwd ) );
		
		icustomer.newCustomer( c, l );
		return new ModelAndView( REDIRECT + "/member/to/login", model );
	}
	
}
