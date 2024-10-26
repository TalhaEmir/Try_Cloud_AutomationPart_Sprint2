package com.Try_Cloud_AutomationPart_Sprint2.Pages;

import com.Try_Cloud_AutomationPart_Sprint2.Utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {

    public LoginPage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(id = "username")
    public WebElement userName;

    @FindBy(id = "password")
    public WebElement password;

    @FindBy(name = "submit")
    public WebElement submit;


    public static void login(String username, String password){
        LoginPage loginPage = new LoginPage();
        loginPage.userName.sendKeys(username);
        loginPage.password.sendKeys(password);
        loginPage.submit.click();

    }
}
