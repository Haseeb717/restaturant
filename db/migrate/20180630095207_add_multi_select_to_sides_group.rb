class AddMultiSelectToSidesGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :sides_groups, :multi_select, :boolean
  end
end
