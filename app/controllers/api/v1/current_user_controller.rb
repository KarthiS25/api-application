class Api::V1::CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    # binding.pry
    
    render json: params[:user][:email], status: :ok
  end
end
