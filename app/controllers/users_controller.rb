class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    binding.pry
    if params[:sort]
      @reviews = @user.reviews.select_sort(params[:sort][:value])
    else
      @reviews = @user.reviews.all
    end
  end
end
