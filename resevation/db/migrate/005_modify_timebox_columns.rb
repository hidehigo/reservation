class ModifyTimeboxColumns < ActiveRecord::Migration
  def self.up
    change_column( :timeboxes, :start, :time )
    change_column( :timeboxes, :end  , :time )
  end

  def self.down
    change_column( :timeboxes, :start, :datetime )
    change_column( :timeboxes, :end  , :datetime )
  end
end
