valid_url = 'http://www.bbc.com'
invalid_url = "bbc.com"
empty_url = ""

# "visit" in capybara directs user to the homepage https://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FSession:visit
Given(/^the user is on the homepage$/) do
  visit '/'
end

#fill_in is another capybara method that fills in the input field with the valid_url specified at the top
When(/^the user enters a valid URL$/) do
  fill_in 'url', :with => valid_url
end

#user enter an invalid url specified as a variable at the top.
When (/^the user enters an invalid URL$/) do
  fill_in 'url', :with => invalid_url
end

#This step definition check if the user enters the correct URL. Expect is a rspec matcher
# to   expect(page).to have_link()  is a capybara method, refer to https://devhints.io/capybara
Then(/^System checks to see URL is valid$/) do
  expect(page).to have_link(valid_url, href: valid_url)
end

#have_content is a capybara method that contains a content specified in the arguments.
Then(/^System checks to see URL is invalid$/) do
  expect(page).to have_content('Please enter a valid URL.')
end