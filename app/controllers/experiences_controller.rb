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
  end

  def update
  end

  def edit
  end

  def delete
  end

  def destroy
  end

  private 

  def experience_params
    params.require(:experience).permit(:name,:source,:completed_on,:skill_id)
  end
end
