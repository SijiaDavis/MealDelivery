class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :ingredient
      t.string :category
      t.boolean :high_protein
      t.boolean :low_carb
      t.boolean :vegan
      t.decimal :cost
      t.timestamps
    end
  end
end
