package com.niit.homeshop.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.homeshop.model.OrderConfirmation;
import com.niit.homeshop.model.ShippingAddress;

@Repository("OrderConfirmationDAO")
public class OrderConfirmationDAOImpl implements OrderConfirmationDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	 public SessionFactory getSession() {
		return sessionFactory;
	}
	 
	 public OrderConfirmationDAOImpl(SessionFactory sessionFactory) {
			super();
			this.sessionFactory = sessionFactory;
		}

		public void setSession(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}
		
		@Transactional
	public List<OrderConfirmation> getAllOrderConfirmation() {
			return sessionFactory.getCurrentSession().createQuery("from OrderConfirmation ").list();
	}

		@Transactional
	public OrderConfirmation getOrderConfirmation(int order_id) {
			return(OrderConfirmation)sessionFactory.getCurrentSession().get(OrderConfirmation.class, order_id);
	}

		@Transactional
	public void insertOrderConfirmation(OrderConfirmation orderconfirmation) {
			sessionFactory.getCurrentSession().saveOrUpdate(orderconfirmation);

	}

	@Override
	public void updateOrderConfirmation(OrderConfirmation orderconfirmation) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void deleteOrderConfirmation(int id) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void deleteAllOrderConfirmation(OrderConfirmation orderconfirmation) {
		// TODO Auto-generated method stub

	}

}
