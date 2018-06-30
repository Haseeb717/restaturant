class SidesGroup < ApplicationRecord
  has_many :menu_sides
  has_many :menu_items,through: :menu_sides

  has_many :sides_items
  accepts_nested_attributes_for :sides_items, :allow_destroy => true

  after_create :update_menu_side


  def update_menu_side
  	self.menu_items << MenuItem.find(self.menu_item_id)
  end
  #validates_presence_of :sides_items
end
