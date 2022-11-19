package com.Web.utils;

import java.util.LinkedList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class CommonOp {

    private WebDriver driver;

    public CommonOp(WebDriver driver) {
        this.driver = driver;
    }

    public WebElement waitUntilElementPresence(By locator, long timeOut) {
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        return wait.until(ExpectedConditions.presenceOfElementLocated(locator));
    }

    public WebElement waitUntilElementClickable(By locator, long timeOut) {
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        return wait.until(ExpectedConditions.elementToBeClickable(locator));
    }

    public boolean waitUntilElementInvisibilityOf(By locator, long timeOut) {
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        return wait.until(ExpectedConditions.invisibilityOf(driver.findElement(locator)));
    }

    public boolean waitUntilElementInvisibilityOfElementLocated(By locator, long timeOut) {
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        return wait.until(ExpectedConditions.invisibilityOfElementLocated(locator));
    }

    public List<WebElement> waitUntilElementsvisibilityOf(By locator, long timeOut) {
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        return wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(locator));
    }

    public WebElement waitUntilElementvisibilityOf(By locator, long timeOut) {
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        return wait.until(ExpectedConditions.visibilityOfElementLocated(locator));
    }

    /*public WebElement waitUntilElementClickableAndInvisibiltyOfLoader( By loader, By locator, long timeOut){
        WebDriverWait wait = new WebDriverWait(driver, timeOut);
        if(wait.until(ExpectedConditions.invisibilityOf(driver.findElement(loader)))){
            return wait.until(ExpectedConditions.elementToBeClickable(locator));
        }else
            return null;
    }*/

    public void closeNotifications(By loader, By closeNotification){
        if(waitUntilElementInvisibilityOf(loader, Constants.EXPLICIT_TIMEOUT)){

            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            //WebElement webElement = waitUntilElementClickable(closeNotification, Constants.EXPLICIT_TIMEOUT);
            List<WebElement> errors = waitUntilElementsvisibilityOf(closeNotification, Constants.EXPLICIT_TIMEOUT);
            for(WebElement ele : errors){
                ele.click();
            }
        }
    }

    public String getNotificationDesc(By loader, By notificationDesccription){
        if(waitUntilElementInvisibilityOf(loader, Constants.EXPLICIT_TIMEOUT)){
            WebElement webElement = waitUntilElementClickable(notificationDesccription, Constants.EXPLICIT_TIMEOUT);
            return webElement.getText();
        }
        return null;
    }

    public List<String> getAllNotificationDesc(By loader, By notificationDesccription){
        List<String> listOfNoticeValues = new LinkedList<String>();
        if(waitUntilElementInvisibilityOf(loader, Constants.EXPLICIT_TIMEOUT)){
            List<WebElement> webElement = waitUntilElementsvisibilityOf(notificationDesccription, Constants.EXPLICIT_TIMEOUT);
            for(WebElement ele : webElement){
                listOfNoticeValues.add(ele.getText());
            }
        }
        return listOfNoticeValues;
    }

    public List<String> getAllNotificationDescHC(){

        By notificationDesccription = By.cssSelector(".ant-notification-notice-description");
        By loader = By.cssSelector(".loader");

        List<String> listOfNoticeValues = new LinkedList<String>();
        if(waitUntilElementInvisibilityOf(loader, Constants.EXPLICIT_TIMEOUT)){
            List<WebElement> webElement = waitUntilElementsvisibilityOf(notificationDesccription, Constants.EXPLICIT_TIMEOUT);
            for(WebElement ele : webElement){
                listOfNoticeValues.add(ele.getText());
            }
        }
        return listOfNoticeValues;
    }

    public void Sleep(long timeout){
        try {
            Thread.sleep(timeout);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

}
