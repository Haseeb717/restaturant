class SidesGroup < ApplicationRecord
  belongs_to :menu_item
  has_many :sides_items
  accepts_nested_attributes_for :sides_items, :allow_destroy => true
  validates_presence_of :sides_items
end
