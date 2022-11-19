
package com.Web.automation;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 * @author lathusha
 */
@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features/1/WebFeature", glue = { "com.Web.automation.stepdefinition" }, tags = {
		
		//"@Addtocart"
		
		"@search,@filter,@Addtocart"
		
	
		
	//"@Register,@resetPassword,@simpleLogin,@Subscription,@contractus, @search,@Addtocart,@Logout,@simpleLoginAdmin,@CancelOrder,@myOrder"
		
}, plugin = { "pretty", "html:target/cucumber-reports/cucumber.html",
		"json:target/cucumber-reports/cucumber.json" }, monochrome = true)
public class TestRunner {

		
}























