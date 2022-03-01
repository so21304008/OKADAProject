package tera;

import java.io.Serializable;

public class ThreadBean implements Serializable {
	private String th_id;
	private String th_name;
	private String th_detalis;
	private	String user_name;
	private	String res_text;
	private	String res_date;

	public ThreadBean(){}

	public String getTh_id() {
		return th_id;
	}
	public void setTh_id(String th_id) {
		this.th_id = th_id;
	}
	public String getName() {
		return th_name;
	}
	public void setName(String th_name) {
		this.th_name = th_name;
	}

	public String getTh_detalis() {
		return th_detalis;
	}

	public void setTh_detalis(String th_detalis) {
		this.th_detalis = th_detalis;
	}


	public String getRes_text() {
		return res_text;
	}

	public void setRes_text(String res_text) {
		this.res_text = res_text;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getRes_date() {
		return res_date;
	}

	public void setRes_date(String res_date) {
		this.res_date = res_date;
	}
}