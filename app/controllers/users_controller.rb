class UsersController < ApplicationController
  before_filter :current_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Se ha creado un nuevo usuario."
      redirect_to users_path
    else
      flash[:error] = "Ha ocurrido un problema cuando el usuario era creado."
      render :action => :new
    end

  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
  
  def index
    
  end
  
end
