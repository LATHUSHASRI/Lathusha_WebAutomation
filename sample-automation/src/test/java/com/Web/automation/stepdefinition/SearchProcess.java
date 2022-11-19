package com.Web.automation.stepdefinition;

import java.util.List;

import com.Web.automation.seleniumpages.Search;
import com.Web.utils.CommonOp;

import cucumber.api.java.en.Given;

public class SearchProcess {
	
	Search search= new Search();
	
			
			
			
	

	@Given("^I want to verify search option$")
	public void User_Login_Again() throws  Exception {
		search.launchChromeBrowser();
		search.search_option();
		search.validateSearchResult();
	}
	
	
	
	

}
