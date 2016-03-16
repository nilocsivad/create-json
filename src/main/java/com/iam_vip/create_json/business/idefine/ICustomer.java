/**
 * 
 */
package com.iam_vip.create_json.business.idefine;

import com.iam_vip.create_json.business.transfer.CustomerModel;
import com.iam_vip.create_json.business.transfer.LoginModel;

/**
 * @author Colin
 */
public interface ICustomer {
	
	CustomerModel newCustomer( CustomerModel customer, LoginModel login );
	
}
