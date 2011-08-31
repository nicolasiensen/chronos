class UserStory < ActiveRecord::Base
  STATUS = {:pending => "pending", :implemented => "implemented"}
  belongs_to :project
  validates_uniqueness_of :role, :scope => [:feature, :benefit]

  def self.create_from_sentence sentence
    sentence[/^As a (.*?)\nI want to (.*?)\nSo that (.*?)$/]
    create(
      :role => $1, 
      :feature => $2, 
      :benefit => $3)
  end

end
