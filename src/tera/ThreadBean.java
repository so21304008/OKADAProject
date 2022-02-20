package tera;

import java.io.Serializable;

public class ThreadBean implements Serializable {
	private int th_id;
	private String th_name;
	private String th_detalis;
	private	String user_name;
	private	String res_text;

	public ThreadBean(){}

	public int getId() {
		return th_id;
	}
	public void setId(int th_id) {
		this.th_id = th_id;
	}
	public String getName() {
		return th_name;
	}
	public void setName(String th_name) {
		this.th_name = th_name;
	}

	public String getDetalis() {
		return th_detalis;
	}

	public void setDetalis(String th_detalis) {
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
}
