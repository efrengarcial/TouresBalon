package com.ibm.dwexample.entities;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Jobreq implements Serializable {
	@Id
	@GeneratedValue(strategy=IDENTITY)
	private int reqid;

	private Timestamp dateposted;

	private String jobtitle;

	private String jobtype;

	private String joblevel;

	private String country;

	private String city;

	private String state;

	private String zipcode;

	private String hiringmgr;

	private String hiringemail;

	private String division;

	private Date applybydate;

	private String jobdesc;

	private static final long serialVersionUID = 1L;

	public Jobreq() {
		super();
	}

	public int getReqid() {
		return this.reqid;
	}

	public void setReqid(int reqid) {
		this.reqid = reqid;
	}

	public Timestamp getDateposted() {
		return this.dateposted;
	}

	public void setDateposted(Timestamp dateposted) {
		this.dateposted = dateposted;
	}

	public String getJobtitle() {
		return this.jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getJobtype() {
		return this.jobtype;
	}

	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}

	public String getJoblevel() {
		return this.joblevel;
	}

	public void setJoblevel(String joblevel) {
		this.joblevel = joblevel;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return this.zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getHiringmgr() {
		return this.hiringmgr;
	}

	public void setHiringmgr(String hiringmgr) {
		this.hiringmgr = hiringmgr;
	}

	public String getHiringemail() {
		return this.hiringemail;
	}

	public void setHiringemail(String hiringemail) {
		this.hiringemail = hiringemail;
	}

	public String getDivision() {
		return this.division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public Date getApplybydate() {
		return this.applybydate;
	}

	public void setApplybydate(Date applybydate) {
		this.applybydate = applybydate;
	}

	public String getJobdesc() {
		return this.jobdesc;
	}

	public void setJobdesc(String jobdesc) {
		this.jobdesc = jobdesc;
	}

}
