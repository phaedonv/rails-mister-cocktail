class Ingredient < ApplicationRecord
  belongs_to :cocktail
  has_many :doses
  validates :name, uniqueness: true
end
