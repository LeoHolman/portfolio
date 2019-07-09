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
    @skill_set_skill = @skill_set.skills.build
  end

  def create
    @skill_set = SkillSet.new(skill_set_params)
    if @skill_set.save
      # params[:skills][:id].each do |skill|
      #   if !skill.empty?
      #     @skill_set.skills.build(:skill_id => skill)
      #   end
      # end
      redirect_to admin_path
    else
      render('new')
    end
  end

  def edit
    @skill_set = SkillSet.find(params[:id])
  end

  def delete
    @page_title = "Delete Skill Set"
    @skill_set = SkillSet.find(params[:id])
    binding.pry
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
