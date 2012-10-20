package com.test;

import com.opensymphony.xwork2.ActionSupport;
import com.util.PageSupport;

public class Test  extends ActionSupport{

	PageSupport page;
	
	public PageSupport getPage() {
		return page;
	}

	public void setPage(PageSupport page) {
		this.page = page;
	}

	@Override
	public String execute() throws Exception {
		page = new PageSupport();
		page.setTotalCount(100);
		return this.SUCCESS;
	}
}