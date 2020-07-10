class UsersController < ApplicationController
before_action :find_user, only: [:show, :edit, :update, :destroy]


    def show

     
    end

    def new
        @user = User.new
        render 'new'
    end

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            @cart = ShoppingCart.create(user_id: @user.id)
            redirect_to home_path
        else
            @errors = @user.errors.full_messages
            render 'new'
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
    end

    private
    def find_user
        @user = User.find(params[:id])
    end

   

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :username)
    end
end