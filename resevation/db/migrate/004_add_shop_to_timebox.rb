class AddShopToTimebox < ActiveRecord::Migration
  def self.up
    change_table :timeboxes do |t|
      t.integer :shop_id
    end
    first_shop = Shop.first
    Timebox.all.each { |t| t.update_attribute(:shop, first_shop) }
  end

  def self.down
    change_table :timeboxes do |t|
      t.remove :shop_id
    end
  end
end
