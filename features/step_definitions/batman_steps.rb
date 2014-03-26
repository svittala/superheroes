Given(/^I am at the superheroes guide$/) do
  visit superheroes_path
end

When(/^I follow the guide to (.+)$/) do |city_name|
  click_link city_name
end

Then(/^I should be protected by (.+)$/) do |superhero_name|
  find('h1').should have_content superhero_name
end