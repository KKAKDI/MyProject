package org.project.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Paging {
	private int pageNum;
	private int amount;
	
	{
		pageNum =1;
		amount = 10;
	}
}
