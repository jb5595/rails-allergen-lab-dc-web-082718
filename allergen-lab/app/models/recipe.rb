class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients

  def self.filter_by_ingredient_number(number)
    Recipe.all.select do |recipe|
      recipe.ingredients.count == number
    end
  end

  def self.sort_by_ingdredient_number
    Recipe.all.sort_by { |recipe| recipe.ingredients.count }
  end
end
