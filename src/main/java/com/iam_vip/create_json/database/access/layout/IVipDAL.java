/**
 * 
 */
package com.iam_vip.create_json.database.access.layout;

import org.springframework.stereotype.Repository;

import com.iam_vip.create_json.business.transfer.VipModel;

/**
 * @author Colin
 */
@Repository
public interface IVipDAL {
	
	int insert( VipModel Vip );
	
}
