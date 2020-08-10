class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new job_params
    if @job.save
      redirect_to '/jobs/show'
    else
      render :new
    end
  end

  def show
    @job = Job.where(staff: session[:uid])
    @job0 = Job.new
    @job0.staff = session[:uid]
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to '/jobs/show'
  end

  def all
    @job = Job.all
  end

  private
  def job_params
    params.require(:job).permit(:order, :staff, :date, :income, :description)
  end
end
