package com.Web.automation.stepdefinition;

import org.junit.Assert;
import java.util.List;

import com.Web.automation.seleniumpages.Myorder;

import com.Web.datatables.AddUser;
import com.Web.utils.CommonOp;

import cucumber.api.java.en.Given;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MyorderProcess {
	Myorder myorder = new Myorder();
	private CommonOp commonOpObj = null;
	
	
	
	@Given("^User filter product$")
	public void Given_User_filter_product() throws Exception {
	    myorder.launchChromeBrowser();
		myorder.itemscategory();
		myorder.validateFilterResult();
		
	}
	
	
	

	
	
	
}