require 'capybara'
require 'capybara/dsl'

Capybara.current_driver = :selenium
Capybara.run_server = false
Capybara.app_host = 'https://login.salesforce.com'


Given /^I am on the SFDC login page$/ do
	visit '/'
end

When /^I enter the username$/ do
  	fill_in "username", :with => 'svittala@67demo.com' 
end

When /^I enter the password$/ do 
  fill_in "password", :with => 'Aakash@02'
end

When /^I click on login button$/ do
  click_button 'Login'
end

Then /^I should be logged to home tab$/ do
	has_link?('home_tab')
#  expect(page).to have_content 'Tab Navigation Home'
end

#This is the Task scenario 
Given /^I am on the SFDC home page$/ do
	has_link?('Lead_Tab')
end

When /^I click New Task$/ do
  	click_on "New Task" 
end

Then /^I should see Task Information$/ do
	has_text?('Task Information' , :visible =>true)
end

#Given /^I am on the SFDC home page$/ do
#	page.has_link?('Lead_Tab')
#end

#When /^I goto Lead page$/ do
#  	click_on "Lead_Tab" 
#end

#Then /^I should see Open Leads$/ do
#  page.has_text?('Lead' , :visible =>true)
#end