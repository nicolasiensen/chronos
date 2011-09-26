class UserStory < ActiveRecord::Base
  STATUS = {:pending => "pending", :implemented => "implemented"}
  belongs_to :project
  validates_uniqueness_of :role, :scope => [:feature, :benefit]
  validates_presence_of :role, :feature, :benefit

  def self.create_from_cucumber feature_json
    feature_json.fetch("description")[/^(In order to|Afim de) (.*)[\W](As a|Como um) (.*)[\W](I want to|Quero poder) (.*)$/i]
    create(:benefit => $2, :role => $4, :feature => $6)
  end

end
