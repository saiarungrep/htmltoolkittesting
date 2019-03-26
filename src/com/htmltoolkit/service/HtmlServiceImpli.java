package com.htmltoolkit.service;

import com.htmltoolkit.Login;
import com.htmltoolkit.Registration;

public interface HtmlServiceImpli {
	public String registrtionservice(Registration registration);
	public String loginservice(Login login);
	public String forgotservice(Registration reg);

}
