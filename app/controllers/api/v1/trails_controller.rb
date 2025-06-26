class Api::V1::TrailsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_trail, only: %i[ show edit update destroy]

    def index
        @trails = Trail.all
        render json: @trails
    end

    def show
        render json: @trail
    end

    def edit
    end

    def create
        @trail = Trail.create(trail_params)
        render json: "#{@trail.name} has been created successfully."
    end

    def update
        @trail = Trail.update(trail_params)
        render json: "#{@trail.name} has been updated successfully."
    end

    def destroy
        @trail.destroy
        render json: "#{@trail.name} has been deleted successfully."
    end


    private
    def set_trail
        @trail = Trail.find(params[:id])
    end

    def trail_params
        params.require(:trail).permit(:name, :miles, :garden_id)
    end

end
