require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class AssignmentsMigration < ActiveRecord::Migration
  def change
    create_table :assignments do |a|
      t.integer :client_id
      t.integer :industry_id
      t.integer :project_id
      t.integer :developer_id
    end
 end
