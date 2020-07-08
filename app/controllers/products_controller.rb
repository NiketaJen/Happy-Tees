class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    
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