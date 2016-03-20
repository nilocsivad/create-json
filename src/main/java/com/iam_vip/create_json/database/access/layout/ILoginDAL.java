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
	
	/**
	 * @param login
	 * @return
	 */
	Integer insert( LoginModel login );
	
	/**
	 * @param login
	 * @return
	 */
	int countItem( LoginModel login );
	
	/**
	 * @param login
	 * @return
	 */
	LoginModel queryOne( LoginModel login );
	
}
