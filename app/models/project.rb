class Project < ActiveRecord::Base
  has_many :user_stories

  def update_from_cucumber
    json = JSON.parse Net::HTTP.get(URI.parse(source_url))
    json.fetch("features").each do |feature|
      UserStory.create_from_sentence feature.fetch("description")
    end
  end

end
