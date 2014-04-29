package com.ibm.ordersystem.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.ejb3.order.entities.Customer;
import com.ibm.ejb3.order.session.CustomerDoesNotExist;
import com.ibm.ejb3.order.session.CustomerTask;

/**
 * Servlet implementation class for Servlet:
 */
public class EJBClientServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */

	@EJB
	private CustomerTask customerTask = null;

	/*TODO to be uncommented during the final portion of the exercise
	@EJB
	private OrderTask orderTask = null;
	*/

	public EJBClientServlet() {
		super();
	}

	@Override
	public void init() throws ServletException {
		super.init();
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doWork(request, response);
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doWork(request, response);
	}

	private void doWork(HttpServletRequest request, HttpServletResponse response) {
		try {
			PrintWriter out = response.getWriter();
			int customerId = 5;

			out.println("<br>Getting Customer ...");
			displayCustomerAndOrder(customerId, out);

		} catch (Throwable ex) {
			ex.printStackTrace();
		}
	}

	private void displayCustomerAndOrder(int customerId, PrintWriter out)
			throws CustomerDoesNotExist {
		Customer customer = customerTask.findCustomer(customerId);
		out.println("<br>Customer ID -> " + customer.getCustomerId());
		out.println("<br>Customer Name -> " + customer.getName());

		/*TODO to be uncommented during the final portion of the exercise
		Order order = orderTask.getCurrentOrder(customerId);
		if (order != null) {
			out.println("<br>order id -> " + order.getOrderId());
			out.println("<br>status -> " + order.getStatus());
			out.println("<br>Total -> " + order.getTotal());
			Collection<Lineitem> lineItems = order.getLineitemCollection();
			for (Lineitem lineItem : lineItems) {
				out.println("<br>****");
				out.println("<br>Line Item Id -> " + lineItem.getLiId());
				out.println("<br>Quantity -> " + lineItem.getQuantity());
				out.println("<br>Total -> " + lineItem.getAmount());
			}
		} else {
			out.println("<br>Customer has no open order...");
		}
		*/
	}

}