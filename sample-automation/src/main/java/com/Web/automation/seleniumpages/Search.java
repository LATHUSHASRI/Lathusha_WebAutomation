package com.Web.automation.seleniumpages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeOptions;

import com.Web.automation.BasePage;
import com.Web.automation.ConfigFileReader;
import com.Web.utils.CommonOp;
import com.Web.utils.Constants;
import com.paulhammant.ngwebdriver.NgWebDriver;

import lombok.extern.slf4j.Slf4j;


@Slf4j
public class Search extends BasePage {
	
	private CommonOp commonOpObj = new CommonOp(driver);
	ConfigFileReader configFileReader = null;
	
	 public void launchChromeBrowser() {
			
			driver.manage().window().maximize();
			configFileReader = new ConfigFileReader();
	
			ChromeOptions options = new ChromeOptions();
		
			options.addArguments("disable-infobars");
			JavascriptExecutor jsDriver = (JavascriptExecutor) driver;
			NgWebDriver ngDriver = new NgWebDriver(jsDriver);
	
			driver.get(configFileReader.getApplicationUrl());
			ngDriver.waitForAngularRequestsToFinish();
			log.info("Opened Home Page");
			commonOpObj = new CommonOp(driver);
		}
	
	public void search_option(){
		commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
		WebElement searchdate=driver.findElement(By.xpath("//input[@id='search']"));
		commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
		searchdate.sendKeys("Top");
		commonOpObj.Sleep(Constants.WAITING_TIME_HIGH);
		searchdate.sendKeys(Keys.ENTER);
		
		
		commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
		
		
	}
	
	public void validateSearchResult() {
		
		WebElement searchdata=driver.findElement(By.xpath("//dt[text()='Related search terms']"));
		String text1=searchdata.getText();
		System.out.println("Search is visible");
		//Assert validation
		Assert.assertEquals(text1, "Related search terms");
		
		}
	
		public void validateSearchResult2() {
				
				WebElement searchdate=driver.findElement(By.xpath("//span[@data-ui-id='page-title-wrapper']"));
				String text1=searchdate.getText();
				System.out.println(text1);
				String text2 = text1.replace(": 'top.'","");
				//Assert validation
				Assert.assertEquals(text2, "Search results for");
				
				}

	
	

}
