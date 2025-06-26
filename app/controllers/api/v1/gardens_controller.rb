class Api::V1::GardensController < ApplicationController
    before_action :authenticate_user!
    before_action :set_garden, only: %i[ edit show update destroy ]
    # after_action :log_create_action

    def index
        @gardens = Garden.all
        render json: @gardens
    end

    def show
        render json: @garden
    end

    def edit
        render json: @garden
    end

    def create
        @garden = Garden.create(garden_params)
        render json: "#{@garden.name} has been created successfully"
    end

    def update
        @garden = Garden.update(garden_params)
        render json: "#{@garden.name} has been updated successfully"
    end

    def destroy
        @garden.destroy
        render json: "#{@garden.name} has been deleted successfully"
    end


    private

    def set_garden
        @garden = Garden.find(params[:id])
    end

    def garden_params
        params.require(:garden).permit(:name, :state)
    end

end
