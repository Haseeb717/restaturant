class AddColumnsToSidesGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :sides_groups, :side_type, :string
  end
end
