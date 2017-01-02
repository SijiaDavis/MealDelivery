class AddPictureToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :picture, :string
  end
end
