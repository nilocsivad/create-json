/**
 * 
 */
package com.iam_vip.create_json.business.idefine;

import com.iam_vip.create_json.business.transfer.LoginModel;

/**
 * @author Colin
 */
public interface ILogin {
	
	/**
	 * @param login
	 * @return
	 */
	Integer newLogin( LoginModel login );
	
	/**
	 * @param login
	 * @return
	 */
	int countItem( LoginModel login );
	
	/**
	 * @param l
	 * @return
	 */
	LoginModel queryOne( LoginModel login );
	
}
