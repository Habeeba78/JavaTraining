package org.hib.rest.mphasis;

public class MainCustomerSearch {

	public static void main(String[] args) {
		int cus_id=1;
		Customer c = new CustomerDao().search(cus_id);
		if (c!=null) {
			System.out.println(c.getCus_id() + "  " + c.getCus_name() + "  " +c.getCus_password() + "  "
					+ c.getCus_email() + "  " + c.getCus_mobile() + "  " +c.getCus_address());
		}
	}
}
