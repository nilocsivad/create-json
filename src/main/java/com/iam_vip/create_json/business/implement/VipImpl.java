/**
 * 
 */
package com.iam_vip.create_json.business.implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iam_vip.create_json.business.idefine.IVip;
import com.iam_vip.create_json.business.transfer.VipModel;
import com.iam_vip.create_json.database.access.layout.IVipDAL;


/**
 * @author Colin
 */
@Service
public class VipImpl implements IVip {
	
	@Autowired private IVipDAL vipDAL;
	
	
	/**
	 * 
	 */
	public VipImpl() {
		// TODO Auto-generated constructor stub
	}
	
	/* (non-Javadoc)
	 * @see com.iam_vip.create_json.business.idefine.IVIP#newVip(com.iam_vip.create_json.business.transfer.VipModel)
	 */
	@Transactional
	public Integer newVip( VipModel vip ) {
		return vipDAL.insert( vip );
	}
	
}
