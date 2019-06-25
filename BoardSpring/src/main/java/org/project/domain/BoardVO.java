package org.project.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private long bno;
	private String title;
	private String content;
	private String writer;
	private long views;
	private Date rdate;
	private Date updateDate;	
}
