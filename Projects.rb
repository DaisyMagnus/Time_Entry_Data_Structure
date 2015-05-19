require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class ProjectsMigration < ActiveRecord::Migration
  def change
    create_table :projects do |p|
      t.string :name
      t.date :start_on
    end
end
