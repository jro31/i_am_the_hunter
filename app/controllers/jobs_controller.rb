class JobsController < ApplicationController
  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    authorize @job
    @job.save
    redirect_to jobs_path
  end

  def index
    @jobs = policy_scope(Job).order(company_name: :asc)
  end
end

private

def job_params
  params.require(:job).permit(:company_name)
end
