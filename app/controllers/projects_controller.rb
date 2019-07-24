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
    @project = Project.find(params[:id])
    @all_skills = Skill.all
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    new_skills = params[:project][:skills]

    # Remove all old skills
    @project.skills.all.each do |skill|
      @project.skills.delete(skill)
    end

    # Add new skills
    new_skills.each do |new_skill|
      @project.skills << Skill.find(new_skill) unless new_skill.blank?
    end
    redirect_to admin_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_path
  end

  private 
  
  def project_params
    params.require(:project).permit(:name,:start_date,:end_date,:description, :skills)
  end
end
