package tera;

import java.io.Serializable;

public class ThreadBean implements Serializable {
	private int th_id;
	private String th_name;

	public ThreadBean(){}

	public int getNumber() {
		return th_id;
	}
	public void setNumber(int th_id) {
		this.th_id = th_id;
	}
	public String getName() {
		return th_name;
	}
	public void setName(String th_name) {
		this.th_name = th_name;
	}
}
