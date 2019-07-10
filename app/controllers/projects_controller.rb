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
    @project = Project.new
    @all_skills = Skill.all
  end

  def create
    @project = Project.new(project_params)
    params[:project][:skills].each do |skill|
      @project.skills << Skill.find(skill) unless skill.blank?
    end
    if @project.save
      redirect_to admin_path
    else
      render('new')
    end
  end

  def edit
  end

  def destroy
  end

  private 
  
  def project_params
    params.require(:project).permit(:name,:start_date,:end_date,:description, :skills)
  end
end
