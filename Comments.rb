require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class CommentsMigration < ActiveRecord::Migration
  def change
    create_table :comments do |c|
      t.integer :client_id
      t.integer :industry_id
      t.integer :project_id
    end
end
