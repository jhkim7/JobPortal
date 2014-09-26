class JobSeekerController < ApplicationController

  def new
    @job_seeker=JobSeeker.new
  end

  def create
    @job_seeker=JobSeeker.new(job_seeker_params)

    if @job_seeker.save
      redirect_to @job_seeker
    else
      render 'new'
    end
  end

  def job_seeker_params
    params.require(:job_seeker).permit(:name, :email, :password, :phone_number, :skills, :resume)
  end


  def show
    @job_seeker = JobSeeker.find(params[:id])
  end

  def index
    @job_seeker = JobSeeker.all
  end

  def edit
    @job_seeker = JobSeeker.find(params[:id])
  end

  def update
    @job_seeker = JobSeeker.find(params[:id])

    if @job_seeker.update(admin_params)
      redirect_to @job_seeker
    else
      render 'edit'
    end
  end

  def destroy
    @job_seeker = JobSeeker.find(params[:id])
    @job_seeker.destroy

    redirect_to JobSeekers_path
  end
end