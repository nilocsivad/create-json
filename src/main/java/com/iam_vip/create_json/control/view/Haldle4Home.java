/**
 * 
 */
package com.iam_vip.create_json.control.view;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iam_vip.create_json.control.ActionRedirect;

/**
 * @author Colin
 */
@Controller
@RequestMapping( value = "home" )
public class Haldle4Home extends ActionRedirect {
	
	/**
	 * 
	 */
	public Haldle4Home() {}
	
	@RequestMapping( value = "to/index" )
	public ModelAndView toHome( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) throws IOException {
		return new ModelAndView( VIEW + "home", model );
	}
	
	@RequestMapping( value = "to/about" )
	public ModelAndView toAbout( HttpServletRequest request, HttpSession session, HttpServletResponse response, ModelMap model ) throws IOException {
		return new ModelAndView( VIEW + "about", model );
	}
	
}
