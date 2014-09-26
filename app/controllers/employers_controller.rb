class EmployersController < ApplicationController

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(employer_params)

    if @employer.save
      redirect_to @employer
    else
      render 'new'
    end
  end

  def employer_params
    params.require(:employer).permit(:company, :name, :email, :password)
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def index
    @employer = Employer.all
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])

    if @employer.update(employer_params)
      redirect_to @employer
    else
      render 'edit'
    end
  end

  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy

    redirect_to employer_path
  end
end
