Feature: Test Facebook application
Background:
	Given open facebook application
	
	
Scenario: test facebook login with valid credentials
When I enter valid "username" and valid "password" and i click on login button
Then I should get access of application


Scenario: Test facebook login with invalid credentials 
When I enter invalid "abc@gmail.com" and invalid "admin@123" and i click on login button
Then I should not get access of application