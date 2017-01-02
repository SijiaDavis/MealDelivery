class Meal < ApplicationRecord
  
  validates :name, presence: true
  validates :ingredient, presence: true
  validates :category, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  
  CATEGORIES = {
    'breakfast' => 'Breakfast',
    'main' => 'main',
    'dessert' => 'dessert',
    'side' => 'side'
  }
  
end
