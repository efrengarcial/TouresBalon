package sca.component.java.impl;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xpath.XPathAPI;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.ibm.websphere.sca.ServiceManager;
import commonj.sdo.DataObject;

public class GetCustomersImpl {
	/**
	 * Default constructor.
	 */
	public GetCustomersImpl() {
		super();
	}

	/**
	 * Return a reference to the component service instance for this implementation
	 * class.  This method should be used when passing this service to a partner reference
	 * or if you want to invoke this component service asynchronously.    
	 *
	 * @generated (com.ibm.wbit.java)
	 */
	private Object getMyService() {
		return (Object) ServiceManager.INSTANCE.locateService("self");
	}

	/**
	 * Method generated to support implemention of operation "getCustomers" defined for WSDL port type 
	 * named "GetCustomers".
	 * 
	 * The presence of commonj.sdo.DataObject as the return type and/or as a parameter 
	 * type conveys that its a complex type. Please refer to the WSDL Definition for more information 
	 * on the type of input, output and fault(s).
	 */
	public DataObject getCustomers(DataObject type) {
		com.ibm.websphere.bo.BOFactory factory = (com.ibm.websphere.bo.BOFactory) new com.ibm.websphere.sca.ServiceManager()
				.locateService("com/ibm/websphere/bo/BOFactory");

		DocumentBuilderFactory domFactory = DocumentBuilderFactory
				.newInstance();
		commonj.sdo.DataObject customers = factory.create(
				"http://CustomersLib", "Customers");

		try {
			Document customersDOM = domFactory.newDocumentBuilder()
					.parse(
							GetCustomersImpl.class
									.getResourceAsStream("Customers.xml"));
			System.out.println("Type received " + type.getString("type"));
			NodeList customersList = XPathAPI
					.selectNodeList(customersDOM,
							"/Customers/Customer"
									+ ("*".equals(type.getString("type")) ? ""
											: "[Type='"
													+ type.getString("type")
													+ "']"));
			for (int i = 0; i < customersList.getLength(); i++) {
				Node customerDOM = customersList.item(i);
				commonj.sdo.DataObject customer = factory.create(
						"http://CustomersLib", "Customer");
				customer.setString("name", XPathAPI.selectSingleNode(
						customerDOM, "Name/text()").getNodeValue());
				customer.setString("type", XPathAPI.selectSingleNode(
						customerDOM, "Type/text()").getNodeValue());
				customer.setString("address", XPathAPI.selectSingleNode(
						customerDOM, "Address/text()").getNodeValue());
				if (customers.getList("customers") == null) {
					customers.setList("customers", new ArrayList());
				}
				customers.getList("customers").add(customer);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customers;
	}

	/**
	 * Method generated to support implemention of operation "addCustomer" defined for WSDL port type 
	 * named "AddCustomer".
	 * 
	 * Please refer to the WSDL Definition for more information 
	 * on the type of input, output and fault(s).
	 */
	public void addCustomer(String name, String type, String address) {
		System.out.println("Adding customer " + name);
		DocumentBuilderFactory domFactory = DocumentBuilderFactory
				.newInstance();
		try {
			Document customersDOM = domFactory.newDocumentBuilder()
					.parse(
							GetCustomersImpl.class
									.getResourceAsStream("Customers.xml"));
			String newCustomer = "<Customer><Name>" + name + "</Name><Type>"
					+ type + "</Type><Address>" + address
					+ "</Address></Customer>";
			Document newCustomerDOM = domFactory.newDocumentBuilder().parse(
					new ByteArrayInputStream(newCustomer.getBytes()));
			Node customers = customersDOM.getDocumentElement();
			customers.appendChild(customersDOM.importNode(newCustomerDOM
					.getDocumentElement(), true));
			TransformerFactory.newInstance().newTransformer().transform(
					new DOMSource(customers),
					new StreamResult(new FileOutputStream(
							GetCustomersImpl.class.getResource("Customers.xml")
									.getFile())));
		} catch (Exception e) {
			
		}
	}

}