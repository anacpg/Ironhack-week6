class CreateIngredientSandwiches < ActiveRecord::Migration
  def change
    create_table :ingredient_sandwiches do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.references :sandwich, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
