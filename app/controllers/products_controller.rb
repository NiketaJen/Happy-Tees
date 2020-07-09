class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    
        def set_to_favorite
            @favproduct = Favorite.create(:user_id, :product_id)
            redirect_to favorite_path(@favproduct)
        end

        def index
            @products = Product.all
        end
    
        def show
        end
    
        def edit
        end
    
        def update
        end
    
        def destroy
        end
    
        private
    
        def set_product
            @product = Product.find(params[:id])
        end
    
        def product_params
            params.require(:Product).permit(:name, :category_id, :quantity)
        end
    
    end