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
            @user = User.find(session[:user_id])
            @cart = @user.shopping_carts.last
            @cart.update(shopping_cart_params)
            render 'edit'
        end
    
        def destroy
         

        end
    
        private
        def find_shopping_cart
            @shopping_cart = ShoppingCart.find(params[:id])
        end
    
        def shopping_cart_params
            params.require(:shopping_cart).permit(:user_id, product_ids: [])
        end
    end