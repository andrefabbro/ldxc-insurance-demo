package com.ldxc.insurance.application;

import java.util.Collections;
import java.util.Set;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Application;
import javax.ws.rs.core.MediaType;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.jaxrs.whiteboard.JaxrsWhiteboardConstants;

/**
 * @author andrefabbro
 */
@Component(property = { 
		JaxrsWhiteboardConstants.JAX_RS_APPLICATION_BASE + "=/customers",
		JaxrsWhiteboardConstants.JAX_RS_NAME + "=Customers.Rest" 
	}, 
service = Application.class)
public class CustomerDataApplication extends Application {

	public Set<Object> getSingletons() {
		return Collections.<Object>singleton(this);
	}

	@GET
	@Path("/list")
	@Produces(MediaType.APPLICATION_JSON)
	public String list() {

		return CustomerDataStore.customers;
	}

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String working() {
		return "It works!";
	}

}