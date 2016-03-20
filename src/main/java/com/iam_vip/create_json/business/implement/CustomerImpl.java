/**
 * 
 */
package com.iam_vip.create_json.business.implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iam_vip.create_json.business.idefine.ICustomer;
import com.iam_vip.create_json.business.idefine.ILogin;
import com.iam_vip.create_json.business.idefine.IVip;
import com.iam_vip.create_json.business.transfer.CustomerModel;
import com.iam_vip.create_json.business.transfer.LoginModel;
import com.iam_vip.create_json.business.transfer.VipModel;
import com.iam_vip.create_json.database.access.layout.ICustomerDAL;
import com.iam_vip.create_json.resource.utilization.ConfigUtil;


/**
 * @author Colin
 */
@Service
public class CustomerImpl implements ICustomer {
	
	@Autowired private ILogin		ilogin;
	@Autowired private IVip			ivip;
									
	@Autowired private ICustomerDAL	customerDAL;
									
									
	/**
	 * 
	 */
	public CustomerImpl() {
		// TODO Auto-generated constructor stub
	}
	
	/* (non-Javadoc)
	 * @see com.iam_vip.create_json.business.idefine.ICustomer#newCustomer(com.iam_vip.create_json.business.transfer.CustomerModel, com.iam_vip.create_json.business.transfer.LoginModel)
	 */
	@Transactional
	public CustomerModel newCustomer( CustomerModel customer, LoginModel login ) {
		Integer uid = customerDAL.insert( customer );
		if ( uid != null && uid > 0 ) {
			
			uid = customer.getUid();
			
			login.setUid( uid );
			ilogin.newLogin( login );
			
			VipModel vip = new VipModel( uid, null, ConfigUtil.getLimit_() );
			ivip.newVip( vip );
		}
		return customer;
	}
	
	/* (non-Javadoc)
	 * @see com.iam_vip.create_json.business.idefine.ICustomer#queryOne(com.iam_vip.create_json.business.transfer.CustomerModel)
	 */
	public CustomerModel queryOne( CustomerModel customer ) {
		return customerDAL.queryOne( customer );
	}
	
}
