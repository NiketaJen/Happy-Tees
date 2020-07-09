class FavoritesController < ApplicationController
before_action :set_favorite, only: [:show, :edit, :update, :destroy]

    def index
        @favorites = Favorite.all
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @favorite = Favorite.create(fav_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_favorite
        @favorite = Favorite.find(params[:id])
    end

    def fav_params
        params.require(:favorite).permit(:user_id, :product_id)
    end

end