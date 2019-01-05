class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    @job.save
    redirect_to jobs_path
  end

  def index
    @jobs = Job.all
  end
end

private

def job_params
  params.require(:job).permit(:company_name)
end
