Given /^there is a project$/ do
  @project = Factory.create :project
end

Given /^this project have a (.+) user story called "([^"]*)"$/ do |user_story_status, user_story_feature|
  @user_story = Factory.create :user_story, :project => @project, :feature => user_story_feature, :status => UserStory::STATUS[user_story_status.to_sym]
end

Then /^I should see the (.+) story feature$/ do |user_story_status|
  page.body.should match /^\<div class=\"#{user_story_status}\"\>#{@user_story.feature}\<\/div\>$/
end
