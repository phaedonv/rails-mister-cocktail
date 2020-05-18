class Dose < ApplicationRecord
  validates :description, :cocktail, :ingredient, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  # has_many :ingredients
  validates :coktail, uniqueness: { scope: :ingredient }

  # before_destroy :check_ingredient_presence

  # private

  # def check_ingredient_presence
    # return false if cocktail.ingredient_id.blank?
  # end
end
