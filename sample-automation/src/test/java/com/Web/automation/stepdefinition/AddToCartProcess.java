package com.Web.automation.stepdefinition;

import java.util.List;

import com.Web.automation.seleniumpages.AddToCart;
import com.Web.datatables.AddUser;
import com.Web.utils.CommonOp;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class AddToCartProcess {
	
	AddToCart addtocart =new AddToCart();
	private CommonOp commonOpObj = null;
	
	 @Given("^User add things to cart$")
	 public void click_on__button() throws Exception{
		addtocart.launchChromeBrowser();
		 addtocart.itemsAddToCart();	 
		 addtocart.validateItem();
	 } 
		 
		 
		/*
		 * @Then("^User Add Data To Order$") public void addDetailsx(List<AddUser>
		 * adduser) throws Exception{ addtocart.addDetails(adduser); }
		 */ 
	


}
