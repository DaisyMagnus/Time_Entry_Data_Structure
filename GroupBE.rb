require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class GroupBackEndMigration < ActiveRecord::Migration
  def change
    create_table :group_back_end do |g|
      t.string :name
  end
end
