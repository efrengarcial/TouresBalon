package com.ibm.dwexample.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;

@Entity
public class Picklistitem implements Serializable {
	@Id
	@GeneratedValue(strategy=IDENTITY)
	private int id;

	private String name;

	private String type;

	private static final long serialVersionUID = 1L;

	public Picklistitem() {
		super();
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
