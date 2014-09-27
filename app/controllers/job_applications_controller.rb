class JobApplicationsController < ApplicationController

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)

    if @job_application.save
      redirect_to @job_application
    else
      render 'new'
    end
  end

  def job_application_params
    params.require(:@job_application).permit(:job, :job_seeker, :cover_letter, :application_date, :status)
  end

  def show
    @job_application = JobApplication.find(params[:id])
  end

  def index
    @job_applications = JobApplication.all
  end

  def edit
    @job_application = JobApplication.find(params[:id])
  end

  def update
    @job_appication = JobApplication.find(params[:id])

    if @job_application.update(job_params)
      redirect_to @job_application
    else
      render 'edit'
    end
  end

  def destroy
    @job_application = JobApplication.find(params[:id])
    @job_application.destroy

    redirect_to jobs_path
  end
end
