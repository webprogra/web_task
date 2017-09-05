class AdminsController < ApplicationController
  def new
  end
  def create
    @admin= Admin.new(admin_params)
    if @admin.save
      render 'login'
    else render 'new'
    end
  end
 
  def login
    @admin=Admin.find_by(@admin)
    if @admin==nil
      render 'login'
    else
      redirect_to 'admins_path'
    end
  end

  private
    def admin_params
      params.require(:admin).permit(:username, :password)
  end
end
