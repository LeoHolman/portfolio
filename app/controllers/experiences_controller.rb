class ExperiencesController < ApplicationController
  
  def new
    @experience = Experience.new
    @page_title = "Add a new experience"
    @all_skills = Skill.all
  end

  def create
    @experience = Experience.create(experience_params)
    if @experience.valid?
      redirect_to admin_path
    else
      render('new')
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def edit
    @experience = Experience.find(params[:id])
    @all_skills = Skill.all
  end
  
  def update
    @experience = Experience.find(params[:id])
    if @experience.update_attributes(experience_params)
      redirect_to experience_path(@experience)
    else
      render('edit')
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to admin_path
  end

  private 

  def experience_params
    params.require(:experience).permit(:name,:source,:completed_on,:skill_id)
  end
end
