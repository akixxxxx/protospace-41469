class PrototypesController < ApplicationController
  def index
    @user = User.all
    @user_names = User.pluck(:name)
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.all
    Prototype.create(prototype_params)
    if @prototype.save
      redirect_to root_path, notice: 'Prototype was successfully created.' 
    else
      render :new
    end
  end

  private 
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end