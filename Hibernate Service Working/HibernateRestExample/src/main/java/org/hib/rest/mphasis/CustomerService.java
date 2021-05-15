package org.hib.rest.mphasis;

import java.sql.SQLException;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/customer")
public class CustomerService {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Customer[] showCustomer() throws SQLException {
		CustomerDao dao = new CustomerDao();
		Customer[] result = dao.showCustomer();
		return result;
	}
	
	@POST
	  @Path("/customerInsert/")
	  @Consumes(MediaType.APPLICATION_JSON)
	  @Produces(MediaType.APPLICATION_JSON)
	  public String insertCustomer(final Customer c) {
	    String s = new CustomerDao().addCustomer(c);
	    System.out.println(s);
	    return s;
	  }

		@GET
		@Path("{id}")
		@Produces(MediaType.APPLICATION_JSON)
		public Customer customerListById(@PathParam("id") int id) {
		 Customer empl = new CustomerDao().search(id);
		  if (empl == null) {
			throw new NotFoundException("No such Customer ID: " + id);
		  }
		  return empl;
		}
}
