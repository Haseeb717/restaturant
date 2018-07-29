class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :title
      t.string :status
      t.float :price
      t.string :email
      t.string :token
      t.datetime :delivery_time

      t.timestamps
    end
  end
end
