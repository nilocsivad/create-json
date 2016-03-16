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
	
	Integer insert( CustomerModel customer );
	
}
