class AdminsController < ApplicationController
  
  def new
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new(admin_params)
    
    if @admin.save
    redirect_to @admin
    else
      render 'new'
    end
  end
  
  def admin_params
    params.require(:admin).permit(:name, :email, :address, :password)
  end
  
  def show
    @admin = Admin.find(params[:id])
  end
  
  def index
    @admins = Admin.all
  end
  
  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    
    if @admin.update(admin_params)
      redirect_to @admin
    else 
      render 'edit'
    end
  end
  
  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    
    redirect_to Admins_path
  end
  
end
