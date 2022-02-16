package tera;

import java.io.Serializable;

public class UseBean implements Serializable {
	private String name;
	private String passWord;
	private String naiyo;
	private String username;

	public UseBean(){}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getNaiyo() {
		return naiyo;
	}

	public void setNaiyo(String naiyo) {
		this.naiyo = naiyo;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
