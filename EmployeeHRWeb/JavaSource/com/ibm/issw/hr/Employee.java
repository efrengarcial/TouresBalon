/*
 * Created on Dec 11, 2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package com.ibm.issw.hr;

/**
 * @author Admin
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class Employee {
	private String empNO;
	private String firstName;
	private String midInit;
	private String lastName;
	private int edLevel;
	
	private String workDept;
	private String phoneNO;
	

	/**
	 * @return Returns the edLevel.
	 */
	public int getEdLevel() {
		return edLevel;
	}
	/**
	 * @param edLevel The edLevel to set.
	 */
	public void setEdLevel(int edLevel) {
		this.edLevel = edLevel;
	}
	/**
	 * @return Returns the empNO.
	 */
	public String getEmpNO() {
		return empNO;
	}
	/**
	 * @param empNO The empNO to set.
	 */
	public void setEmpNO(String empNO) {
		this.empNO = empNO;
	}
	/**
	 * @return Returns the firstName.
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName The firstName to set.
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return Returns the lastName.
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName The lastName to set.
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return Returns the minInit.
	 */
	public String getMidInit() {
		return midInit;
	}
	/**
	 * @param minInit The minInit to set.
	 */
	public void setMidInit(String minInit) {
		this.midInit = minInit;
	}
	/**
	 * @return Returns the phoneNO.
	 */
	public String getPhoneNO() {
		return phoneNO;
	}
	/**
	 * @param phoneNO The phoneNO to set.
	 */
	public void setPhoneNO(String phoneNO) {
		this.phoneNO = phoneNO;
	}
	/**
	 * @return Returns the workDept.
	 */
	public String getWorkDept() {
		return workDept;
	}
	/**
	 * @param workDept The workDept to set.
	 */
	public void setWorkDept(String workDept) {
		this.workDept = workDept;
	}
}
