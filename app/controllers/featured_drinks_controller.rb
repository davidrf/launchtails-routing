class FeaturedDrinksController < ApplicationController
  def index
    @drinks = Drink.all.where(featured: true).page(params[:page])
  end
end
