package org.hib.rest.mphasis;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class MainProg {
	public static void main(String[] args) {
//		Configuration cfg = new AnnotationConfiguration();
//		cfg.configure("org/hib/rest/mphasis/hibernate.cfg.xml");
//		SessionFactory sf=cfg.buildSessionFactory();
//		Session s=sf.openSession();
//		Query q=s.createQuery("from Employ");
//		List<Employ> list=q.list();
//		for(Employ e:list){
//			System.out.println("Employ no........."+e.getEmpno());
//			System.out.println("Name of Employ...."+e.getName());
//			System.out.println("Department........"+e.getDept());
//			System.out.println("Designation......."+e.getDesig());
//			System.out.println("Basic............."+e.getBasic());
//			System.out.println();
//		}
		Customer[] customer = new CustomerDao().showCustomer();
		for(Customer e : customer) {
			System.out.println(e.getCus_id() + "  " + e.getCus_name() + "  " +e.getCus_email() + "  "
					+ e.getCus_password() + "  " + e.getCus_mobile() + "  " +e.getCus_address());
			
		}
	}
}
