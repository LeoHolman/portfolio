class SkillSetsController < ApplicationController
  def index
    @page_title = "Skills"
    @skill_sets = SkillSet.all
  end

  def show
    @skill_set = SkillSet.find(params[:id])
    @page_title = @skill_set.name + " skills"
  end
end
