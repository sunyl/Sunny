package cn.sunny.entity;

import java.io.Serializable;

public class Job implements Serializable {
	
	private Integer id;// ID
	private String name;// ְλ����
	private String remark;// ��ϸ����

	public Job() {
		
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}