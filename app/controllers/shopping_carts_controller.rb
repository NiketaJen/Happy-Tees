class ShoppingCartsController < ApplicationController
    before_action :find_shopping_cart, only: [:edit, :show, :update, :destroy]
       
        def index
            
        end
    
        def show
            @cart = ShoppingCart.find(params[:id])
        end
    
        def new
        end
    
        def create
        end
    
        def edit
            @user = User.find(session[:user_id])
            @cart = @user.shopping_carts.last
            # @cart = ShoppingCart.find(params[:id])
        end
    
        def update
        end
    
        def destroy
            @item = CatrProduct.find(params)

        end
    
        private
        def find_shopping_cart
            @shopping_cart = ShoppingCart.find(params[:id])
        end
    
        def shopping_cart_params
            params.require(:Shopping_Cart).permit(:user_id)
        end
    end