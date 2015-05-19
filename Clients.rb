require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class ClientsMigration < ActiveRecord::Migration
  def change
    create_table :clients do |c|
      t.string :name
   end
 end
