package org.hib.rest.mphasis;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class CustomerDao {

	public Customer[] showCustomer() {
	
		SessionFactory sf=SessionHelper.getFactory();
		Session s=sf.openSession();
		TypedQuery  q=s.createQuery("from Customer");
		List<Customer> list=q.getResultList();
		return list.toArray(new Customer[list.size()]);
	}
	
	public String addCustomer(Customer customer) {
		SessionFactory sf = SessionHelper.getFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(customer);
		t.commit();
		return "record inserted...";
	}
	
	public Customer search(int cus_id) {
		SessionFactory sf=SessionHelper.getFactory();
		Session s=sf.openSession();
		TypedQuery q=s.createQuery("from Customer where cus_id=" +cus_id);
		List<Customer> list = q.getResultList();
		if (list.size()==1) {
			return list.get(0);
		} else {
			return null;
		}
	}
}
