class SkillSetsController < ApplicationController
  def index
    @skill_sets = SkillSet.all
  end

  def show
    @skill_set = SkillSet.find(params[:id])
  end
end
