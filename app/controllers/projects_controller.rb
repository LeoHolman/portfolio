class ProjectsController < ApplicationController
  def index
    @page_title = "Projects"
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @page_title = @project.name
    
  end
end
