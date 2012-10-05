class CreateTimeboxes < ActiveRecord::Migration
  def self.up
    create_table :timeboxes do |t|
      t.datetime :start
      t.datetime :end
      t.timestamps
    end
  end

  def self.down
    drop_table :timeboxes
  end
end
