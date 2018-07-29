class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.string :title
      t.float :price
      t.string :quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
