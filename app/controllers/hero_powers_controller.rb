class HeroPowersController < ApplicationController
    before_action :set_hero
  
    def create
      power = Power.find(params[:power_id])
      if power
        # Create a new HeroPower instance with the associated hero, power, and strength
        hero_power = HeroPower.new(hero: @hero, power: power, strength: params[:strength])
        if hero_power.save
          # If the hero_power is successfully saved, render the hero JSON response with the included powers
          render json: @hero, include: { powers: { only: [:id, :name, :description] } }
        else
          # If there are errors when saving the hero_power, render the errors as JSON response with the appropriate status
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        # If the power is not found, render a JSON response with an error message and the appropriate status
        render json: { error: "Power not found" }, status: :not_found
      end
    end
  
    private
  
    def set_hero
      # Find the hero based on the hero_id parameter
      @hero = Hero.find(params[:hero_id])
    end
end