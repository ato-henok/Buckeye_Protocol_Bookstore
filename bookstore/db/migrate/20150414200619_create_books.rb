class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :condition
      t.decimal :price, precision: 8, scale:2
      t.string :isbn

      t.timestamps
    end
  end
end
