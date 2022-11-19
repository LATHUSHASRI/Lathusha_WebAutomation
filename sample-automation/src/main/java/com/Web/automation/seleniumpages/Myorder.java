package com.Web.automation.seleniumpages;



import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;

import com.Web.automation.BasePage;
import com.Web.automation.ConfigFileReader;
import com.Web.datatables.AddUser;
import com.Web.utils.CommonOp;
import com.Web.utils.Constants;
import com.paulhammant.ngwebdriver.NgWebDriver;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Myorder extends BasePage {
	private CommonOp commonOpObj = new  CommonOp( driver) ;
	ConfigFileReader configFileReader = null;
	
	
	
	
	//login
	
			By woman = By.xpath("//span[contains(text(),'Women')]");
			By clickOntop = By.xpath("//a[@id='ui-id-9']");
			By category = By.xpath("//a[contains(text(),'Jackets')]");
			By color = By.xpath("//div[contains(text(),'Color')]");

		
		By blackcolor = By.xpath("//div[@option-label='Black'] [@tabindex='-1']");
		By cancelstatus = By.xpath("//*[@id='myOrds']/table/tbody/tr/td[3]");
		
		//By loginbutton = By.xpath("//a[@class='signup']");
		//By signinbutton = By.xpath("//input[@class='btn btn-load-sales btn-sign-up']");
		
		

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

		
		
		public void itemscategory() {
			
			driver.findElement(woman).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
			log.info("open woman collection");
			
			driver.findElement(category).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
			log.info("click on jacket category");
			
			driver.findElement(color).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_OVER_DOUBLE_HIGH);
			log.info("click color");
				
			
			driver.findElement(blackcolor).click();
			commonOpObj.Sleep(Constants.WAITING_TIME_HIGH);
			log.info("select black color  ");
			
			
			
			
			
			}
		
		public void validateFilterResult() {
			
			WebElement filterdata=driver.findElement(By.xpath("//h1[@id='page-title-heading']"));
			String text1=filterdata.getText();
			//Assert validation
			Assert.assertEquals(text1, "Jackets");
			System.out.println("jacket is filtered");
			
		
			WebElement color1=driver.findElement(By.xpath("//span[contains(text(),'Black')]"));
			String text2=color1.getText();
			//Assert validation
			Assert.assertEquals(text2,"Black");
			System.out.println("Black color is filtered");
			
			}

		
		


}