class Api::V1::GardensController < ApplicationController
    before_action :authenticate_user!
    before_action :set_garden, only: %i[ edit show update destroy ]
    after_create :log_create_action

    def index
        @gardens = Garden.all
        render json: @gardens
    end

    def show
        @garden = Garden.find(params[:id])
        render json: @garden
    end

    def edit
        render json: @garden
    end

    def create
        @garden = Garden.create(name: params[:name], state: params[:state])
        render json: "#{@garden.name} has been created successfully"
    end

    def update
        @garden = Garden.update(name: params[:name], state: params[:state])
        render json: "#{@garden.name} has been updated successfully"
    end

    def destroy
        @garden.destroy
        render json: "#{@garden.name} has been deleted successfully"
    end

    def log_create_action
        puts "Gardens created"
    end


    private

    def set_garden
        @garden = Garden.find(params[:id])
    end
end
