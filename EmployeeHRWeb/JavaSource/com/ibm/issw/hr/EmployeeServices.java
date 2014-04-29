/*
 * Created on Dec 11, 2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package com.ibm.issw.hr;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * @author Admin
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class EmployeeServices {

	public void addEmployee(Employee e) {

		try {
			
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("jdbc/Sample");
			Connection conn = ds.getConnection();
			
			// use a statement to gather data from the database
			Statement st = conn.createStatement();
			String mySQL = "insert into admin.employee (empno, firstnme, midinit, lastname, edlevel) values ('"
					+ e.getEmpNO()
					+ "','"
					+ e.getFirstName()
					+ "','"
					+ e.getMidInit()
					+ "','"
					+ e.getLastName()
					+ "',"
					+ e.getEdLevel() + ")";
			
			// execute the query
			System.out.println(" the query is " + mySQL);
			st.executeUpdate(mySQL);

			st.close();
			conn.close();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} catch (NamingException ne) {
			// TODO Auto-generated catch block
			ne.printStackTrace();
		}

	}

	public static void main(String[] args) {
		EmployeeServices empService = new EmployeeServices();
		Employee e = new Employee();
		e.setEmpNO("AAAAA");
		e.setLastName("XU");
		e.setMidInit("Y");
		e.setFirstName("Peter");
		e.setEdLevel(19);
		empService.addEmployee(e);
		System.out.println("done");
	}
}
