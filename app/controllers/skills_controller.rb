class SkillsController < ApplicationController
  def index
    @page_title = "Skills"
    @skills = Skill.all
  end

  def show
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
