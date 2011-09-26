class UserStory < ActiveRecord::Base
  STATUS = {:pending => "pending", :implemented => "implemented"}
  belongs_to :project
  validates_uniqueness_of :role, :scope => [:feature, :benefit]
  validates_presence_of :role, :feature, :benefit

  def self.create_from_sentence sentence
    sentence[/^(In order to|Afim de) (.*)[\W](As a|Como um) (.*)[\W](I want to|Eu quero) (.*)$/i]
    create(:benefit => $2, :role => $4, :feature => $6)
  end

end
