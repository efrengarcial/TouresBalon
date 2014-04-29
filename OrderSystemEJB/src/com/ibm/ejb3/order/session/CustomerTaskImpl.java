package com.ibm.ejb3.order.session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.ibm.ejb3.order.entities.Customer;

@Stateless
public class CustomerTaskImpl implements CustomerTask {

	@PersistenceContext(name="OrderDB")
	EntityManager em;
		
	public Customer findCustomer(int customerId) throws CustomerDoesNotExist {
		Customer customer = (Customer) em.find(Customer.class, customerId);
		//Customer customer = new Customer();
		//customer.setCustomerId(9);
		//customer.setName("prueba");
		//em.persist(customer);
				
		if (customer == null) {
			throw new CustomerDoesNotExist("Customer does not exist");
		}
		return customer;
	}

}
