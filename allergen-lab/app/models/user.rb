class User < ApplicationRecord
  has_many :recipes
  has_many :allergies
  has_many :allergens, through: :allergies, :source => 'ingredient'

end
