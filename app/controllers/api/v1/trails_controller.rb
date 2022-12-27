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
        @trail = Trail.create(name: params[:name], miles: params[:miles], forest: params[:forest])
        render json: "#{@trail.name} has been created successfully."
    end

    def update
        @trail = Trail.update(name: params[:name], miles: params[:miles], forest: params[:forest])
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

end
