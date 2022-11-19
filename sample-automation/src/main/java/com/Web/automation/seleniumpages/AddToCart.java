package com.Web.automation.seleniumpages;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.Select;

import com.Web.automation.BasePage;
import com.Web.automation.ConfigFileReader;
import com.Web.datatables.AddUser;
import com.Web.utils.CommonOp;
import com.Web.utils.Constants;
import com.paulhammant.ngwebdriver.NgWebDriver;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AddToCart extends BasePage{

	private CommonOp commonOpObj = new CommonOp(driver);
	ConfigFileReader configFileReader = null;
	
	
	By gear =By.xpath("//span[text()='Gear']");
	By watch =By.xpath("//a[text()='Watches']");
	By watchbuy =By.xpath("//a[contains(text(),'Didi Sport Watch')]");
	By addtocartbutton =By.xpath("//button[@id='product-addtocart-button']");
	By mybasket =By.xpath("//div[@data-block='minicart']");
	By verifyiteminbasket =By.xpath("//a[contains(text(),'Didi Sport Watch')]");
	By email =By.xpath("//input[@id='billing_email']");
	By placedorder =By.xpath("//button[@id='place_order'] [@value='Place order']");
	

	
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


	
		
	public void itemsAddToCart() {
			
			driver.findElement(gear).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_HIGH);
			log.info("Opened gear Page");
			
			driver.findElements(watch).get(1).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_HIGH);
			log.info("Opened yogakit item ");
			
			
			
			driver.findElement(watchbuy).click();
			//driver.findElement(noofitems).sendKeys("4");
			commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
			log.info("buying watch to add to cart");
			
			driver.findElement(addtocartbutton).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
			log.info("product added into cart");
			
	}
	
	public void validateItem() {
		
		driver.findElement(mybasket).click();
		commonOpObj.Sleep(Constants.WAITING_TIME_HIGH);
		log.info("Opened mybasket");
		
		
		WebElement cart1=driver.findElement(verifyiteminbasket);
		String watch1=cart1.getText();
		//Assert validation
		Assert.assertEquals(watch1, "Didi Sport Watch");
		System.out.println("watch is added in cart");
		
		
		//if(driver.findElement(verifyiteminbasket).isDisplayed()){
		//	System.out.println("item added ");
		
		
		
		//commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
		//log.info("successfully  add to cart");
		
		
		
}


		
	
}
