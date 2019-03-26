package com.htmltoolkit.dao;

import org.springframework.stereotype.Repository;

import com.htmltoolkit.Login;
import com.htmltoolkit.Registration;
@Repository
public interface HtmlDaoImpli {
	public String registrationdao(Registration registration);
	public String logindao(Login login);
	public String forgotdao(Registration reg);

}
