class CreateConferenceSessions < ActiveRecord::Migration
  def self.up
    create_table :conference_sessions do |t|
      t.string :title
      t.datetime :start_time
      t.integer :user_id
      t.text :abstract
      t.boolean :approved

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
