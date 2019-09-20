class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}
  # validates :cocktail_id(in parametized url), uniqueness: {scope: :ingredient_id(in association)}

end
