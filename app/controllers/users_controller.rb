class UsersController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @user = Users.all
  end

  def delete
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end