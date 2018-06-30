class AddGroupSidesToSidesGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :sides_groups, :group_side, :boolean
  end
end
