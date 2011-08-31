class AddStatusToUserStories < ActiveRecord::Migration
  def self.up
    add_column :user_stories, :status, :string
  end

  def self.down
    remove_column :user_stories, :status
  end
end
