package com.zime.maven.entity;

public class Major {
    private Integer majorId;

    private String majorName;

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName == null ? null : majorName.trim();
    }

	public Major(Integer majorId, String majorName) {
		super();
		this.majorId = majorId;
		this.majorName = majorName;
	}

	public Major() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Major [majorId=" + majorId + ", majorName=" + majorName + "]";
	}
    
    
}