/**
 * 
 */
package com.iam_vip.create_json.business.implement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iam_vip.create_json.business.idefine.ILogin;
import com.iam_vip.create_json.business.transfer.LoginModel;
import com.iam_vip.create_json.database.access.layout.ILoginDAL;


/**
 * @author Colin
 */
@Service
public class LoginImpl implements ILogin {
	
	@Autowired private ILoginDAL loginDAL;
	
	
	/**
	 * 
	 */
	public LoginImpl() {}
	
	/* (non-Javadoc)
	 * @see com.iam_vip.create_json.business.idefine.ILogin#newLogin(com.iam_vip.create_json.business.transfer.LoginModel)
	 */
	@Transactional
	public Integer newLogin( LoginModel login ) {
		return loginDAL.insert( login );
	}
	
	/* (non-Javadoc)
	 * @see com.iam_vip.create_json.business.idefine.ILogin#countItem(com.iam_vip.create_json.business.transfer.LoginModel)
	 */
	public int countItem( LoginModel login ) {
		return loginDAL.countItem( login );
	}
	
}
