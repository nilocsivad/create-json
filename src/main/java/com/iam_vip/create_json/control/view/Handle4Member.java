/**
 * 
 */
package com.iam_vip.create_json.control.view;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView toLogin( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) throws IOException {
		return new ModelAndView( VIEW + "login", model );
	}
	
	@RequestMapping( method = RequestMethod.POST, value = "do/login" )
	public ModelAndView doLogin( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model, RedirectAttributes attr, String lname, String lpwd ) throws NoSuchAlgorithmException, IOException {
		
		LoginModel l = new LoginModel();
		l.setLname( lname );
		l.setLpwd( PasswordUtil.getMD5( lpwd ) );
		
		l = ilogin.queryOne( l );
		if ( l != null ) {
			Integer uid = l.getUid();
			
			CustomerModel customer = new CustomerModel();
			customer.setUid( uid );
			customer = icustomer.queryOne( customer );
			
			if ( customer != null ) {
				
				// model.addAttribute( SESSION_V, customer );
				session.setAttribute( SESSION_V, customer );
				
				return super.facade( request, response, model );
			}
		}
		
		attr.addFlashAttribute( "lname", lname ).addFlashAttribute( "message", "用户名密码不正确" );
		return new ModelAndView( REDIRECT + "/member/to/login", model );
	}
	
	@RequestMapping( value = "to/register" )
	public ModelAndView toRegister( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) throws IOException {
		return new ModelAndView( VIEW + "register", model );
	}
	
	@RequestMapping( method = RequestMethod.POST, value = "do/register" )
	public ModelAndView doRegister( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model, RedirectAttributes attr, String uname, String lname, String lpwd ) throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException {
		
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
	
	@RequestMapping( value = "to/out/of/system" )
	public ModelAndView toOutOfSystem( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) throws IOException {
		
		request.getSession().setAttribute( SESSION_V, null );
		request.getSession().removeAttribute( SESSION_V );
		request.getSession().invalidate();
		return super.facade( request, response, model );
	}
	
	@RequestMapping( value = "to/my/thing" )
	public ModelAndView toMyThing( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) throws IOException {
		
		request.getSession().setAttribute( SESSION_V, null );
		request.getSession().removeAttribute( SESSION_V );
		request.getSession().invalidate();
		return super.facade( request, response, model );
	}
	
}
