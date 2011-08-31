namespace :chronos do
  namespace :create do
    desc "Create a complete project"
    task :project => :environment do
      project = Factory.create :project
      UserStory.create :role => "project manager", :feature => "view my project user stories", :benefit => "I can keep track all of them", :project => project
      puts "Created a project with id #{project.id}"
    end
  end
end
