# Link Referal App

* This is a ruby language based project which consists of a web application that takes in web page link. Further on, we would be using the cucumber-capybara & selenium for rails to test this simple web application....

**User experience details:**
* User is to enter a name of a webpage and it's designated url, then submit the form. Once the form is submitted, then a link row is created for the url and its name. Once the url is clicked, the user is then presented with a list of first child url webpages, the user also has a second option to be redirected to the webpage as well in a new tab/window.. 

**An example** would be user types and enters bbc.com then once clicked the user is given the next level of that webpage like: https://www.bbc.co.uk/news or https://www.bbc.co.uk/sport or https://www.bbc.co.uk/weather , then they have the second option to click on the link so that they can be redirected to that webpage.

**Screenshots of app behaviour:**
1) https://drive.google.com/file/d/1HGFkDxoFkzuyqqvLJ_kRThNp9rqyS_Fp/view?usp=sharing (initial landing page)
2) https://drive.google.com/file/d/1kzH0FZcHANFErYlYZ3ahI3kF796QzleW/view?usp=sharing (user inputs valid URL with http/s prefix)
3) https://drive.google.com/open?id=146S-RZYap267QxL4nIIywONb5n_bUPG1 (listing of top level links after user has entered a valid URL)
4) https://drive.google.com/open?id=1HipsMR3yWSeOiAYmIHmWqzc4V953anlC (user inputs a invalid url without any http/s prefix)
5) https://drive.google.com/open?id=12GmRKowF8eO5v6FA_PlMFWY8BfAMjVth (message returned to user after entered an invalid url)

**Frameworks we're using:**
* Ruby Rails
* Cucumber
* Capybara
* RSPEC
* Selenium Webdriver (Run tests on browser)

**Steps on how to start the app**
1) make sure you download and run the postgres client app for the database creating and migration.
2) run ```bundle install``` to install the gems specified in the GEMFILE
3) run ```rake db:create``` to create the database in the postgres client app, you'll see an update in the postgres client app of the link referall app database showing up. If you've done this for the first time on your machine, you don't need to do it the second time, instead skip to step 4.
4) run ```rake db:migrate``` to migrate any change.
5) run ```rails server``` to start the local server on port 4000 (by default), 
6) open up the browser and enter localhost:4000
7) web page should pop up

**How to run cucumber tests**
1) make sure you have the Chrome webdriver installed in the correct path.
2) After the gems have been successfully installed
3) Run the application successfully (follow the 'Steps on how to start the app' section)
3) run the following command: ```cucumber bundle exec /features/features/links.feature``` (specify :NUMBER if you want to run a specific scenario or line)

## Documentation
-In the repo, we have a docs folder which includes two text files of ruby principles and designs as well as learning notes. The ruby_convention_and_learning_notes.txt file will always be updated with new notes in regards to ruby programming. I've also added a playground directory within the learning directory which includes a list of practice ruby coding that I did through udemy tutorial.

**Links, Resources & Tutorials Used:**
* codemy.com: ruby on rails: to do list app course - used the basic RoR project setup tutorial and basic database and user input forms to start the project.
* Udemy.com: Learn to Code with Ruby course - used course to learn ruby design, conventions and concepts of programming in ruby.
* https://madeintandem.com/blog/setting-up-rspec-and-capybara-in-rails-5-for-testing/ - Setting up capybara & rspec for project
* https://medium.com/@rainerborene/7-ways-to-encode-urls-in-ruby-c15078a7d6bc - How to encode string to URL
* https://github.com/cucumber/cucumber-rails - setting up cucumber in project
* https://github.com/teamcapybara/capybara#using-capybara-with-cucumber - Using capybara with cucumber
* https://rubygems.org/ - Cherry picking gems required to be installed in project.
* https://stackoverflow.com/questions/34882796/ruby-nokogiri-open-uri-fail-to-parse-page & http://ruby.bastardsbook.com/chapters/html-parsing/ - used this to find out how to use nokogiri and open-uri to open a webpage.
* https://www.rubydoc.info/github - index of rspec, capybara and ruby documentation.
* https://devhints.io/capybara - capybara cheatsheet.
