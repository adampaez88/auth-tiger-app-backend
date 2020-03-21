class TigersController < ApplicationController
    before_action :authenticate, only: [:create, :index]

    def index
        tigers = Tiger.all
        render json: {tigers: tigers}, include: [:user]
    end

    def create
        tiger = Tiger.create(
            name: params[:name],
            user: @user
        )
        render json: tiger
    end
end
