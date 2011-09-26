FactoryGirl.define do

  factory :project do
  end

  factory :user_story do
    project
    feature "view my project user stories"
    benefit "keep track of all my project user stories"
    role "project manager"
  end

end
