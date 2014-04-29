/**
 * 
 */
package com.ibm.ejb3.order.session;

import javax.ejb.Local;

import com.ibm.ejb3.order.entities.Customer;

/**
 * @author Administrator
 *
 */
@Local
public interface CustomerTask {
	
	public Customer findCustomer(int customerId) throws CustomerDoesNotExist ;
}
