class MealsController < ApplicationController
  
  def index
    @meals = Meal.all
  end
  
  def new
    @meal = Meal.new
  end
  
  def create 
    @meal = Meal.create(meal_params)
    if @meal.valid?
      redirect_to meals_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
  
  def meal_params
    params.require(:meal).permit(:name, :ingredient, :category, :cost, :high_protein, :low_carb, :vegan)
  end
end
