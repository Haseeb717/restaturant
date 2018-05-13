class CreateMenuGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_groups do |t|
      t.string :name
      t.text :description
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
