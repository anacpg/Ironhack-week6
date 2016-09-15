class Ingredient < ActiveRecord::Base
  has_many :ingredient_sandwiches
  has_many :sandwiches, through: :ingredient_sandwiches


end
