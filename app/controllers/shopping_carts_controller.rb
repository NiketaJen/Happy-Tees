class Shopping_CartController < ApplicationController
    before_action :find_Shopping_Cart, only: [:edit, :update, :destroy]
       
        def index
            
        end
    
        def show
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
        def find_Shopping_Cart
            @Shopping_Cart = Shopping_Cart.find(params[:id])
        end
    
        def Shopping_Cart_params
            params.require(:Shopping_Cart).permit(:user_id, :product_id)
        end
    en