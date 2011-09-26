class Project < ActiveRecord::Base
  has_many :user_stories
  belongs_to :user

  def update_from_cucumber
    json = JSON.parse Net::HTTP.get(URI.parse(source_url))
    json.fetch("features").each do |feature_json|
      user_stories.create_from_cucumber feature_json
    end
  end

end
