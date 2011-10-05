Given /^I am signed in$/ do
  visit "/auth/facebook"
end

Given /^I have a project called "([^"]*)"$/ do |arg1|
  @project = Factory.create :project, :name => arg1, :user => Authorization.find_by_uid("536687842").user, :source_url => "http://chronos-pm.heroku.com/cucumber.json"
  FakeWeb.register_uri(:get, @project.source_url, :body => File.open("#{Rails.root}/spec/fixtures/cucumber.json").read)
end

Given /^this project have a (.+) user story called "([^"]*)"$/ do |user_story_status, user_story_feature|
  @user_story = Factory.create :user_story, :project => @project, :feature => user_story_feature, :status => UserStory::STATUS[user_story_status.to_sym]
end

Then /^I should see the (.+) story feature$/ do |user_story_status|
  page.body.should match /^\<div class=\"#{user_story_status}\"\>#{@user_story.feature}\<\/div\>$/
end
