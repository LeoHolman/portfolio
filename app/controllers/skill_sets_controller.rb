class SkillSetsController < ApplicationController
  
  def index
    @page_title = "Skills"
    @skill_sets = SkillSet.all
  end

  def show
    @skill_set = SkillSet.find(params[:id])
    @page_title = @skill_set.name + " skills"
  end

  def new
    @page_title = "Add a new skill set"
    @skill_set = SkillSet.new
    @all_skills = Skill.all
  end

  def create
    @skill_set = SkillSet.new(skill_set_params)
    params[:skill_set][:skills].each do |skill|
      @skill_set.skills << Skill.find(skill) unless skill.blank?
    end
    if @skill_set.save
      redirect_to admin_path
    else
      render('new')
    end
  end

  def edit
    @skill_set = SkillSet.find(params[:id])
    @all_skills = Skill.all
  end

  def update
    @skill_set = SkillSet.find(params[:id])
    @skill_set.update_attributes(skill_set_params)

    # Delete previous skills
    @skill_set.skills.all.each do |skill|
      @skill_set.skills.delete(skill)
    end

    # Add new skills
    new_skills = params[:skill_set][:skills]
    new_skills.each do |new_skill|
      @skill_set.skills << Skill.find(new_skill) unless new_skill.blank?
    end

    redirect_to admin_path
  end 

  def destroy
    @skill_set = SkillSet.find(params[:id])
    @skill_set.destroy
    redirect_to admin_path
  end


  private
  
    def skill_set_params
      params.require(:skill_set).permit(:name)
    end

end
