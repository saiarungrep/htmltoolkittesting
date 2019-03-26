package com.htmltoolkit.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Repository;

import com.htmltoolkit.Login;
import com.htmltoolkit.Registration;

@Repository
public class HtmlDao implements HtmlDaoImpli {

	SessionFactory mysessionFactory;

	public SessionFactory getMysessionFactory() {
		return mysessionFactory;
	}

	public void setMysessionFactory(SessionFactory mysessionFactory) {
		this.mysessionFactory = mysessionFactory;
	}

	Session session;
	Transaction trans;
	String s;

	@Autowired
	private JavaMailSender mailSender;

	@Override
	public String registrationdao(Registration registration) {
		try {
			session = mysessionFactory.openSession();
			Transaction tran = session.beginTransaction();
			System.out.println("am in dao registration before");
			session.save(registration);
			tran.commit();
			session.close();
			System.out.println("am in dao registration after ");
			s = registration.getName() + "Register success";
		} catch (HibernateException e) {

			s = "User Already Exist";
		}

		return s;
	}

	@Override
	public String logindao(Login login) {

		session = mysessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		String hql = "from registration where  emailid=:emailid and password=:password";
		Query query = session.createQuery(hql).setString("emailid", login.getEmailid()).setString("password",
				login.getPassword());
		List list = query.list();
		tran.commit();
		session.close();

		if ((list != null) && (list.size() > 0)) {
			s = "success";
		}

		else {
			s = "Invalid Credentials";
		}
		return s;
	}

	@Override
	public String forgotdao(Registration reg) {

		String s;

		Session session = mysessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(reg.getEmailid());
		email.setSubject("your password");

		String hql = " select reg.password from registration reg where reg.emailid = :emailid";
		Query query = session.createQuery(hql).setString("emailid", reg.getEmailid());
		String password = (String) query.uniqueResult();

		if (password != null) {
			email.setText("your password is " + password);
			mailSender.send(email);
			tr.commit();
			session.close();
			s = "Password has been sent to your Email";
		}

		else {
			s = "your Email is not registered";

		}
		return s;
	}

}
