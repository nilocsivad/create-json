/**
 * 
 */
package com.iam_vip.create_json.database.access.layout;

import org.springframework.stereotype.Repository;

import com.iam_vip.create_json.business.transfer.LoginModel;

/**
 * @author Colin
 */
@Repository
public interface ILoginDAL {
	
	Integer insert( LoginModel login );
	
	int countItem( LoginModel login );
	
}
