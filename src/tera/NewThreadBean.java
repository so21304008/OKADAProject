package tera;

import java.io.Serializable;

public class NewThreadBean implements Serializable {
	private int th_id;
	private String th_title;
	private String th_category;
	private String th_maintext;

	public NewThreadBean() {
	}

	public int getNumber() {
		return th_id;
	}

	public void setNumber(int th_id) {
		this.th_id = th_id;
	}

	public String getTitle() {
		return th_title;
	}

	public void setTitle(String th_title) {
		this.th_title = th_title;
	}

	public String getCategory() {
		return th_category;
	}

	public void setCategory(String th_category) {
		this.th_category = th_category;
	}

	public String getMaintext() {
		return th_maintext;
	}

	public void setMaintext(String th_maintext) {
		this.th_maintext = th_maintext;
	}
}