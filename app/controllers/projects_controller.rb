class ProjectsController < ApplicationController
  def index
    @page_title = "Projects"
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @page_title = @project.name
  end

  def new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def destroy
  end
end
