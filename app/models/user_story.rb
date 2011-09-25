class UserStory < ActiveRecord::Base
  STATUS = {:pending => "pending", :implemented => "implemented"}
  belongs_to :project
  validates_uniqueness_of :role, :scope => [:feature, :benefit]

  def self.create_from_sentence sentence
    sentence[/^Afim de (.*)[\W]Como um (.*)[\W]Eu quero (.*)$/i]
    create(
      :benefit => $1, 
      :role => $2, 
      :feature => $3)
  end

end
