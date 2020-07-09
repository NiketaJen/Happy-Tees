class HomepageController < ApplicationController
  def home
    
  end

  def new
    @user = User.new
    render 'new'
end

def create
    @user = User.new(user_params)

    if @user.valid?
        @user.save
        redirect_to user_path(@user)
    else
        @errors = @user.errors.full_messages
        render signup_path
    end
end

end
