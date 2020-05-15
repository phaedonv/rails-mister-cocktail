class Dose < ApplicationRecord
  validates :description, :cocktail, :ingredient, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :cocktail }
end
