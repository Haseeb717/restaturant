class AddMenuGroupToSidesGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :sides_groups, :menu_group_id, :integer
  end
end
