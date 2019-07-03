class ProjectsController < ApplicationController
  def index
    @page_title = "Projects"
    @projects = Project.all
  end

  def show
  end
end
