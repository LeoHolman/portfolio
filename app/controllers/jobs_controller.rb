class JobsController < ApplicationController
  def new
    @page_title = "Add a job"
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    if @job.valid?
      redirect_to admin_path
    else
      render('new')
    end
  end

  def index
  end

  def show
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    if @job.valid? 
      redirect_to admin_path
    else
      render('edit')
    end
  end

  def destroy
  end

  private

  def job_params
    params.require(:job).permit(:title,:employer,:start_date,:end_date)
  end
end
