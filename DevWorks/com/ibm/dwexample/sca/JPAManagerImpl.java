package com.ibm.dwexample.sca;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.xml.bind.DatatypeConverter;

import com.ibm.dwexample.entities.Jobreq;
import com.ibm.dwexample.entities.Picklistitem;
import com.ibm.dwexample.entities.Userlist;
import com.ibm.websphere.bo.BOFactory;
import com.ibm.websphere.bo.BOXMLSerializer;
import com.ibm.websphere.sca.ServiceManager;
import com.ibm.websphere.security.auth.WSSubject;
import commonj.sdo.DataObject;

public class JPAManagerImpl {
	/**
	 * Default constructor.
	 */
	public JPAManagerImpl() {
		super();
	}

	/**
	 * Return a reference to the component service instance for this implementation
	 * class.  This method should be used when passing this service to a partner reference
	 * or if you want to invoke this component service asynchronously.    
	 *
	 * @generated (com.ibm.wbit.java)
	 */
	@SuppressWarnings("unused")
	private Object getMyService() {
		return (Object) ServiceManager.INSTANCE.locateService("self");
	}

	EntityManagerFactory emf = Persistence
			.createEntityManagerFactory("DevWorksJPA");

	public DataObject openJobReq(DataObject jobReq) {
		// convert SDO to XML and output to system.out
		BOXMLSerializer bos = (BOXMLSerializer) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOXMLSerializer");
		EntityManager em = emf.createEntityManager();
		try {

			bos.writeDataObject(jobReq, jobReq.getType().getURI(), jobReq
					.getType().getName(), System.out);
			// map SDO to Java object
			Jobreq req = new Jobreq();
			req.setCity(jobReq.getString("city"));
			req.setDateposted(new Timestamp(DatatypeConverter.parseDateTime(
					jobReq.getString("datePosted")).getTimeInMillis()));
			req.setApplybydate(Date.valueOf(jobReq.getString("applyByDate")));
			req.setDivision(jobReq.getString("division"));
			req.setHiringmgr(jobReq.getString("hiringMgr"));
			req.setHiringemail(jobReq.getString("hiringEmail"));
			req.setJobdesc(jobReq.getString("jobDesc"));
			req.setJoblevel(jobReq.getString("jobLevel"));
			req.setJobtype(jobReq.getString("jobType"));
			req.setState(jobReq.getString("state"));
			req.setCountry(jobReq.getString("country"));
			req.setZipcode(jobReq.getString("zipCode"));
			req.setJobtitle(jobReq.getString("jobTitle"));
			System.out.println("em = " + em);
			em.persist(req);
			System.out.println("req: " + req.getReqid());
			jobReq.setInt("id", req.getReqid());

		} catch (Exception e) {
			e.printStackTrace(System.out);
		} finally {
			em.close();
		}
		return jobReq;
	}

	/**
	 * Method generated to support implementation of operation "getDivisions" defined for WSDL port type 
	 * named "UIInitializeService".
	 * 
	 * The presence of commonj.sdo.DataObject as the return type and/or as a parameter 
	 * type conveys that it is a complex type. Please refer to the WSDL Definition for more information 
	 * on the type of input, output and fault(s).
	 */
	public DataObject getDivisions() {
		BOFactory bofactory = (BOFactory) new ServiceManager().
		locateService("com/ibm/websphere/bo/BOFactory");
		EntityManager em = emf.createEntityManager();
		DataObject pickList=bofactory.create("http://com.ibm.dwexample.bo","Picklist");
		pickList.setString("identifier","value");
		int i=0;
		for (Picklistitem p : (List<Picklistitem>)em.createQuery(
				"select p from Picklistitem p where p.type='Division'").getResultList()){
			++i;
			pickList.setString("items["+i+"]/name", p.getName());
		}
		BOXMLSerializer bos = (BOXMLSerializer) new ServiceManager().
		locateService("com/ibm/websphere/bo/BOXMLSerializer");
		try {
			bos.writeDataObject(pickList, pickList.getType().getURI(), 
					pickList.getType().getName(), System.out);
		}catch(Exception e) {
			e.printStackTrace(System.out);
		} finally {
			em.close();
		}
		return pickList;
	}

	public DataObject getJobLevels() {
		BOFactory bofactory = (BOFactory) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOFactory");
		EntityManager em = emf.createEntityManager();
		DataObject pickList = bofactory.create("http://com.ibm.dwexample.bo",
				"Picklist");
		pickList.setString("identifier", "value");
		int i = 0;
		for (Picklistitem p : (List<Picklistitem>) em.createQuery(
				"select p from Picklistitem p where p.type='JobLevel'")
				.getResultList()) {
			++i;
			pickList.setString("items[" + i + "]/name", p.getName());
		}
		BOXMLSerializer bos = (BOXMLSerializer) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOXMLSerializer");
		try {
			bos.writeDataObject(pickList, pickList.getType().getURI(), pickList
					.getType().getName(), System.out);
		} catch (Exception e) {
			e.printStackTrace(System.out);
		} finally {
			em.close();
		}
		return pickList;
	}

	public DataObject getJobTypes() {
		BOFactory bofactory = (BOFactory) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOFactory");
		EntityManager em = emf.createEntityManager();
		DataObject pickList = bofactory.create("http://com.ibm.dwexample.bo",
				"Picklist");
		pickList.setString("identifier", "value");
		int i = 0;
		for (Picklistitem p : (List<Picklistitem>) em.createQuery(
				"select p from Picklistitem p where p.type='JobType'")
				.getResultList()) {
			++i;
			pickList.setString("items[" + i + "]/name", p.getName());
		}
		BOXMLSerializer bos = (BOXMLSerializer) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOXMLSerializer");
		try {
			bos.writeDataObject(pickList, pickList.getType().getURI(), pickList
					.getType().getName(), System.out);
		} catch (Exception e) {
			e.printStackTrace(System.out);
		} finally {
			em.close();
		}
		return pickList;
	}

	public DataObject getUserDetails() {
		BOFactory bofactory = (BOFactory) new ServiceManager()
				.locateService("com/ibm/websphere/bo/BOFactory");
		DataObject userStore = bofactory.create("http://com.ibm.dwexample.bo",
				"UserDataStore");
		EntityManager em = emf.createEntityManager();
		try {
			Userlist currentUser = em.find(Userlist.class, WSSubject
					.getCallerPrincipal());
			userStore.setString("label", "fullname");
			userStore.setString("identifier", "email");
			userStore.setString("items[1]/fullname", currentUser.getFullname());
			userStore.setString("items[1]/email", currentUser.getEmail());
		} catch (Exception e) {
			e.printStackTrace(System.out);
		} finally {
			em.close();
		}
		return userStore;
	}

}
