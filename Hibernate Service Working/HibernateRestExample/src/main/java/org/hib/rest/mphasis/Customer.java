package org.hib.rest.mphasis;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="Customer")
public class Customer {
private int cus_id;
private String cus_name,cus_password,cus_email,cus_mobile,cus_address;

@Id
@Column(name="cus_id")
public int getCus_id() {
	return cus_id;
}
public void setCus_id(int cus_id) {
	this.cus_id = cus_id;
}
@Column(name="cus_name")
public String getCus_name() {
	return cus_name;
}
public void setCus_name(String cus_name) {
	this.cus_name = cus_name;
}
@Column(name="cus_password")
public String getCus_password() {
	return cus_password;
}
public void setCus_password(String cus_password) {
	this.cus_password = cus_password;
}
@Column(name="cus_email")
public String getCus_email() {
	return cus_email;
}
public void setCus_email(String cus_email) {
	this.cus_email = cus_email;
}
@Column(name="cus_mobile")
public String getCus_mobile() {
	return cus_mobile;
}
public void setCus_mobile(String cus_mobile) {
	this.cus_mobile = cus_mobile;
}
@Column(name="cus_address")
public String getCus_address() {
	return cus_address;
}
public void setCus_address(String cus_address) {
	this.cus_address = cus_address;
}


}


