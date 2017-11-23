package cn.sunny.http;

import java.io.Serializable;

public class JsonResult<T> implements Serializable {

	private int code;
	private boolean flag;
	private String msg;
	private T data;

	public JsonResult(T body, int code) {
		this(code, true, body, "");
	}

	public JsonResult(int code, boolean flag, T body, String error) {
		this.data = body;
		this.msg = error;
		this.code = code;
		this.flag = flag;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
}
