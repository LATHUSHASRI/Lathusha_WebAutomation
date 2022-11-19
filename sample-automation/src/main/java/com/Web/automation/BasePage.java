package com.Web.automation;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 * @author madusanka@codelantic.com
 *
 */
public class BasePage {

	public static WebDriver driver;

	ConfigFileReader configFileReader = new ConfigFileReader();

	public BasePage() {

		System.setProperty("webdriver.chrome.driver", configFileReader.getDriverPath());

		if (driver == null) {
			driver = new ChromeDriver();
		}
	}

}
