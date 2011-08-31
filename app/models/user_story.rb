class UserStory < ActiveRecord::Base
  STATUS = {:pending => "pending", :implemented => "implemented"}
  belongs_to :project
end
