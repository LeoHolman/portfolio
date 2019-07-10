class SkillsController < ApplicationController
  before_action :authenticate_admin!, only: [:edit,:update,:create,:new,:destroy,:delete]
  def index
    @page_title = "Skills"
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @page_title = @skill.name
  end

  def new
    @page_title = "Create a skill"
    @skill = Skill.new()
  end

  def create
    @skill = Skill.create(skill_params)
    if @skill.save
      redirect_to admin_path
    else
      render('new')
    end
  end

  def edit
    @skill = Skill.find(params[:id])
    @page_title = "Edit " + @skill.name
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(skill_params)
      redirect_to(admin_path)
    else
      render('edit')
    end
    
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to(admin_path)
  end

  def delete
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end
end
