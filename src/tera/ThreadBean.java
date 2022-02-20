package tera;

import java.io.Serializable;

public class ThreadBean implements Serializable {
	private int th_id;
	private String th_name;
	private String th_detalis;

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
}
