class Sandwich < ActiveRecord::Base
  has_many :ingredient_sandwiches
  has_many :ingredients, through: :ingredient_sandwiches

  def as_json(options={})
    super(only: [:id, :name, :bread_type],
      include: [ingredients: {only: [:id, :name, :calories]}])
  end

  def add ingredient
    self.ingredients.push(ingredient)
  end
end
