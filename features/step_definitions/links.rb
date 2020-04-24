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

When (/^the user enters an empty url$/) do
  fill_in 'url', :with => empty_url
end

#click_button is a capyara action
And(/^the user clicks the on the search button$/) do
  click_button("commit")
end


#This step definition check if the user enters the correct URL. Expect is a rspec matcher
# to   expect(page).to have_link()  is a capybara method, refer to https://devhints.io/capybara
Then(/^system checks to see URL is valid$/) do
  expect(page).to have_link(valid_url, href: valid_url)
end

Then(/^system checks to see URL is empty and returns an error dialog$/) do
  expect(page).to have_content('Please fill in this field.')
end

#have_content is a capybara method that contains a content specified in the arguments.
Then(/^system checks to see URL is invalid and returns an error$/) do
  expect(page).to have_content('Please enter a valid URL.')
end

#capyara method that asserts and verifies top links with the valid_url as it's placeholder
Then(/^user finds the top-links$/) do
  regex = /#{valid_url}\/.*$/
  expect(page).to have_xpath("//a", :text => regex)
end