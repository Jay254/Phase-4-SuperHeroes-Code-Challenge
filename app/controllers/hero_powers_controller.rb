class HeroPowersController < ApplicationController
    before_action :set_hero
  
    def create
      power = Power.find(params[:power_id])
      if power
        hero_power = HeroPower.new(hero: @hero, power: power, strength: params[:strength])
        if hero_power.save
          render json: @hero, include: { powers: { only: [:id, :name, :description] } }
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { error: "Power not found" }, status: :not_found
      end
    end
  
    private
  
    def set_hero
      @hero = Hero.find(params[:hero_id])
    end
end  