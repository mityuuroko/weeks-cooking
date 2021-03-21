class Item < ApplicationRecord
  validates :name,   :menu_id, presence: true
end
