# Maven-With-Cucumber
Maven with Cucumber with feature file for validation of a login page

I am adding my code of feature file and my dataDef code here.



feature file code starts from here
Feature: Test Facebook application
Background:
	Given open facebook application
	
	
Scenario: test facebook login with valid credentials
When I enter valid "username" and valid "password" and i click on login button
Then I should get access of application


Scenario: Test facebook login with invalid credentials 
When I enter invalid "abc@gmail.com" and invalid "admin@123" and i click on login button
Then I should not get access of application



Stepdefinition file code starts from here


package loginPkg;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class MyStepDef {
	WebDriver driver;
	
	@Given("open facebook application")
	public void open_facebook_application() {
		System.out.println("Step 1 :Open application");
		System.setProperty("webdriver.chrome.driver", "C:\\Driver\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.get("https://www.facebook.com/");
	   
	}

	@When("I enter valid {string} and valid {string} and i click on login button")
	public void i_enter_valid_and_valid_and_i_click_on_login_button(String s1, String s2) {
		driver.findElement(By.id("email")).sendKeys(s1);
		driver.findElement(By.id("pass")).sendKeys(s2);
	   
	}

	@Then("I should get access of application")
	public void i_should_get_access_of_application() {
		WebElement login1 = driver.findElement(By.name("login"));
		login1.click();
		

	    
	}

	@When("I enter invalid {string} and invalid {string} and i click on login button")
	public void i_enter_invalid_and_invalid_and_i_click_on_login_button(String string, String string2) {
		driver.findElement(By.id("email")).sendKeys(string);
		driver.findElement(By.id("pass")).sendKeys(string2);
	    }

	@Then("I should not get access of application")
	public void i_should_not_get_access_of_application() {
		
		WebElement login = driver.findElement(By.name("login"));
		login.click();
		
	    
	}


}
