class CreateUserStories < ActiveRecord::Migration
  def self.up
    create_table :user_stories do |t|
      t.integer :project_id
      t.string :role
      t.string :feature
      t.string :benefit

      t.timestamps
    end
  end

  def self.down
    drop_table :user_stories
  end
end
