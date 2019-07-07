class SkillsController < ApplicationController
  def index
    @page_title = "Skills"
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @page_title = @skill.name
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def delete
  end
end
