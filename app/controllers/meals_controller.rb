class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end
  
  private
  
  def meal_params
    
  end
end
