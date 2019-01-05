class JobsController < ApplicationController
  before_action :set_job, only: [:new_position, :update_position, :new_location, :update_location]

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    authorize @job
    @job.save
    redirect_to new_position_job_path(@job)
  end

  def index
    @jobs = policy_scope(Job).order(company_name: :asc)
  end

  def new_position
    authorize @job
  end

  def update_position
    authorize @job
    @job.update(job_params)
    redirect_to new_location_job_path(@job)
  end

  def new_location
    authorize @job
  end

  def update_location
    authorize @job
    @job.update(job_params)
    # redirect_to SOMEWHERE
  end

  private

  def job_params
    params.require(:job).permit(:company_name, :agency, :position, :location)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
