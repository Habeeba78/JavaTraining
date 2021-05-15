package org.hib.rest.mphasis;

public class Dummy {

	public static void main(String[] args) {
		Customer customer = new Customer();
		customer.setCus_id(54);
		customer.setCus_name("Salma");
		customer.setCus_password("sallu");
		customer.setCus_email("salma@gmail.com");
		customer.setCus_mobile("6281928293");
		customer.setCus_address("Rajhamundry");
		System.out.println(new CustomerDao().addCustomer(customer));
	}
}
