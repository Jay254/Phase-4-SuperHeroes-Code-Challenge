class PowersController < ApplicationController
    before_action :set_power, only: [:show, :update]
  
    def index
      # Fetch all powers from the database
      powers = Power.all
      # Render the powers as a JSON response
      render json: powers
    end
  
    def show
      if @power
        # If the power is found, render the power JSON response
        render json: @power
      else
        # If the power is not found, render a JSON response with an error message and the appropriate status
        render json: { error: "Power not found" }, status: :not_found
      end
    end
  
    def update
      if @power
        # Update the power with the permitted parameters
        if @power.update(power_params)
          # If the power is successfully updated, render the updated power JSON response
          render json: @power
        else
          # If there are errors when updating the power, render the errors as JSON response with the appropriate status
          render json: { errors: @power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        # If the power is not found, render a JSON response with an error message and the appropriate status
        render json: { error: "Power not found" }, status: :not_found
      end
    end
  
    private
  
    def set_power
      # Find the power based on the id parameter
      @power = Power.find_by(id: params[:id])
    end
  
    def power_params
      params.permit(:description)
    end
end