class Ingredient < ApplicationRecord
  belongs_to :farm
  has_many :orders
end
