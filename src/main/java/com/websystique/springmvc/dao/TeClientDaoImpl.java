package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.TeClient;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;


@Repository("teClientDao")
public class TeClientDaoImpl extends AbstractDao<Integer, TeClient> implements TeClientDao {

	public TeClient findById(int id) {
		TeClient client = getByKey(id);
		return client;
	}

	public List<TeClient> findByName(String name) {
		Criteria crit = createEntityCriteria();
		if (!StringUtils.isEmpty(name)) {
			crit.add(Restrictions.eq("name", name));
		}
		List<TeClient> clients = crit.list();
		return clients;
	}
}
