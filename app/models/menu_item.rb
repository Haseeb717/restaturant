class MenuItem < ApplicationRecord
  belongs_to :menu_group
  has_many :sides_group
end
