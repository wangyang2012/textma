package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Client;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("clientDao")
public class ClientDaoImpl extends AbstractDao<Integer, Client> implements ClientDao {

	public Client findById(int id) {
		Client client = getByKey(id);
//		if(user!=null){
//			Hibernate.initialize(user.getClientGroup());
//		}
		return client;
	}

	public Client findByName(String name) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("name", name));
		Client client = (Client)crit.uniqueResult();
//		if(client!=null){
//			Hibernate.initialize(client.getClientGroup());
//		}
		return client;
	}

	@SuppressWarnings("unchecked")
	public List<Client> findAllClients() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Client> clients = (List<Client>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return clients;
	}

	public void save(Client client) {
		persist(client);
	}
}
