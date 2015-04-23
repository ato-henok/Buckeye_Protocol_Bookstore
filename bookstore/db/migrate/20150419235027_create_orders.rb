class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :book_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
