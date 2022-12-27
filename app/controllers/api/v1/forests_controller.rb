class Api::V1::ForestsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_forest, only: %i[ edit show update destroy ]

    def index
        @forests = Forest.all
        render json: @forests
    end

    def show
        # @forest = Forest.find(params[:id])
        render json: @forest
    end

    def edit
        render json: @forest
    end

    def create
        @forest = Forest.create(name: params[:name], state: params[:state])
        render json: "#{@forest.name} has been created successfully"
    end

    def update
        @forest = Forest.update(name: params[:name], state: params[:state])
        render json: "#{@forest.name} has been updated successfully"
    end

    def destroy
        @forest.destroy
        render json: "#{@forest.name} has been deleted successfully"
    end


    private

    def set_forest
        @forest = Forest.find(params[:id])
    end

end
