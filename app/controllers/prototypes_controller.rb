class PrototypesController < ApplicationController
  def index
    @user = User.all
    @user_names = User.pluck(:name)
  end

  def new
    @prototype = Prototype.all
  end

  def create
    @prototype = Prototype.all
  end
end
