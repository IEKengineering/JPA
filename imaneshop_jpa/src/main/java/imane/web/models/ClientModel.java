package imane.web.models;

import java.util.ArrayList;
import java.util.List;

import imane.entities.Client;

public class ClientModel {
	private List<Client> clients = new ArrayList<Client>();

	public ClientModel() {
		super();
	}

	public List<Client> getClients() {
		return clients;
	}

	public void setClients(List<Client> clients) {
		this.clients = clients;
	}
	
	
}
