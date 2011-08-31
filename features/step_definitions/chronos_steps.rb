Given /^there is a project$/ do
  @project = Factory.create :project
end

Given /^this project have an user story called "([^"]*)"$/ do |arg1|
  @user_story = Factory.create :user_story, :project => @project, :feature => arg1
end
