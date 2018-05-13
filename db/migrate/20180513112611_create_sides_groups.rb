class CreateSidesGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :sides_groups do |t|
      t.string :name
      t.references :menu_item, foreign_key: true

      t.timestamps
    end
  end
end
