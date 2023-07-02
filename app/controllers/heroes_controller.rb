class HeroesController < ApplicationController
    def index
      # Fetch all heroes from the database
      heroes = Hero.all
      # Render the heroes as a JSON response with only the specified attributes
      render json: heroes, only: [:id, :name, :super_name]
    end
  
    def show
      # Find the hero based on the id parameter
      hero = Hero.find(params[:id])
      if hero
        # If the hero is found, render the hero JSON response with the included powers
        render json: hero, include: { powers: { only: [:id, :name, :description] } }
      else
        # If the hero is not found, render a JSON response with an error message and the appropriate status
        render json: { error: "Hero not found" }, status: :not_found
      end
    end
end