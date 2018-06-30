class MenuItem < ApplicationRecord
  belongs_to :menu_group
  has_many :menu_sides
  has_many :sides_group,through: :menu_sides
end
