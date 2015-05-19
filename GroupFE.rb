require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class GroupFrontEndMigration < ActiveRecord::Migration
  def change
    create_table :group_front_end do |g|
      t.string :name
  end
end
