class CreateOrdersummaries < ActiveRecord::Migration
  def change
    create_table :ordersummaries do |t|
      t.date :orderdate
      t.float :billamount
      t.string :orderstatus
      t.integer :user_id
    end
  end
end
