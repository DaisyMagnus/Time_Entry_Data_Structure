require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class IndustriesMigration < ActiveRecord::Migration
  def change
    create_table :industries do |i|
      t.string :indsutry
  end
end
