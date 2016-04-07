package com.cisco.webapp;

import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/UserService")
public class UserService {

	@GET
	@Produces((MediaType.APPLICATION_JSON))
	public List<Users> getUser() {
		Users u = new Users();
		List<Users> users = new ArrayList<Users>();
		users.add(u);
		return users;
	}
}
	