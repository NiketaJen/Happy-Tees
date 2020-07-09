class ShoppingCartsController < ApplicationController
    before_action :find_shopping_cart, only: [:edit, :show, :update, :destroy]
       
        def index
            
        end
    
        def show
            @user = User.find(params[:id])
        end
    
        def new
        end
    
        def create
        end
    
        def edit
        end
    
        def update
        end
    
        def destroy
        end
    
        private
        def find_shopping_cart
            @shopping_cart = ShoppingCart.find(params[:id])
        end
    
        def shopping_cart_params
            params.require(:Shopping_Cart).permit(:user_id, :product_id)
        end
    end