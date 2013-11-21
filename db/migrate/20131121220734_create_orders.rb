class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :item_id
      t.integer :userid
      t.integer :ordersummaryid
      t.string :item_name
      t.string :item_picture
      t.string :item_category
      t.integer :item_quantity
      t.float :item_price
    end
  end
end
