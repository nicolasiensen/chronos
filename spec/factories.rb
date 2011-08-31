FactoryGirl.define do

  factory :project do
  end

  factory :user_story do
    project
    feature "view my project user stories"
  end

end
