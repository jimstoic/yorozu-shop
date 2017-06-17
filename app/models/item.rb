class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :stock, presence: true

  has_many :comments
end
