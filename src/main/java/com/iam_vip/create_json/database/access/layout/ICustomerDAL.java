/**
 * 
 */
package com.iam_vip.create_json.database.access.layout;

import org.springframework.stereotype.Repository;

import com.iam_vip.create_json.business.transfer.CustomerModel;

/**
 * @author Colin
 */
@Repository
public interface ICustomerDAL {
	
	/**
	 * @param customer
	 * @return
	 */
	Integer insert( CustomerModel customer );
	
	/**
	 * @param customer
	 * @return
	 */
	CustomerModel queryOne( CustomerModel customer );
	
}
