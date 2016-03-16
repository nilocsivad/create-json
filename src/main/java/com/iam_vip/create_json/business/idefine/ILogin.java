/**
 * 
 */
package com.iam_vip.create_json.business.idefine;

import com.iam_vip.create_json.business.transfer.LoginModel;

/**
 * @author Colin
 */
public interface ILogin {
	
	Integer newLogin( LoginModel login );
	
	int countItem( LoginModel login );
	
}
