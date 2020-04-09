valid_url = 'http://www.bbc.com'
invalid_url = "bbc.com"

# "visit" in capybara directs user to the homepage https://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FSession:visit
Given(/^the user is on the homepage$/) do
  visit '/'
end

#fill_in is another capybara method that fills in the input field with the valid_url specified at the top
When(/^the user eneters a valid url$/) do
  fill_in 'url', :with => valid_url
end