class JobsController < ApplicationController
  before_action :set_job, only: [:new_position, :update_position, :new_location, :update_location, :new_salary, :update_salary, :new_date_applied, :update_date_applied, :new_url, :update_url, :edit, :update, :destroy]

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    authorize @job
    if @job.save
      redirect_to new_position_job_path(@job)
    else
      render :new
    end
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
    redirect_to new_salary_job_path(@job)
  end

  def new_salary
    authorize @job
  end

  def update_salary
    authorize @job
    @job.update(job_params)
    redirect_to new_date_applied_job_path(@job)
  end

  def new_date_applied
    authorize @job
  end

  def update_date_applied
    authorize @job
    @job.update(job_params)
    redirect_to new_url_job_path(@job)
  end

  def new_url
    authorize @job
  end

  def update_url
    authorize @job
    @job.update(job_params)
    redirect_to root_path
  end

  def edit
    authorize @job
  end

  def update
    authorize @job
    if @job.update(job_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    authorize @job
    @job.destroy
    # flash[:notice] = "Job deleted"
    redirect_to root_path
  end

  private

  def job_params
    params.require(:job).permit(:company_name, :agency, :position, :location, :currency, :salary_low, :salary_high, :salary_type, :date_applied, :url)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
