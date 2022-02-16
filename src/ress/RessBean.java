package ress;

import java.io.Serializable;

public class RessBean implements Serializable {
	private String res_text;
	private String user_name;

	public RessBean(){}

	public String getText() {
		return res_text;
	}
	public void setText(String res_text) {
		this.res_text = res_text;
	}

	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this. user_name= user_name;
	}
}
