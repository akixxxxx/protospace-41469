class PrototypesController < ApplicationController
  def index
    @user = User.all
    @user_names = User.pluck(:name)
  end
end
