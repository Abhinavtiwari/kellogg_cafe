class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :availability
      t.string :item_name
      t.string :item_category
      t.string :item_picture
      t.float :item_price
      t.string :item_description
    end
  end
end
