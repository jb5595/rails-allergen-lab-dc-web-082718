class Ingredient < ApplicationRecord
   belongs_to :recipe
   has_many :allergies

   def self.sort_by_allergies
     Ingredient.all.sort_by { |ingredient| ingredient.allergies.count }.reverse
   end
end
