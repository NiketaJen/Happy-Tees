class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    
        def index
            @categories = Category.all
        end

        def new

        end
    
        def show
            @products = @category.products
        end
    
        def edit
        end
    
        def update
        end
    
        def destroy
        end
    
        private
    
        def set_category
            @category = Category.find(params[:id])
        end
    
        def fav_params
            params.require(:category).permit(:style)
        end
    
    end