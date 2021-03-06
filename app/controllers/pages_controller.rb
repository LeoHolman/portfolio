class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [ :admin ]
  def index
    @skill_sets = SkillSet.all
    @skills = Skill.take(5)
    @projects = Project.take(5)
    @jobs = Job.take(5)
  end

  def about
    @page_title = "About"
  end

  def resume
    @page_title = "Resume"
  end

  def admin
    @skills = Skill.all
    @skill_sets = SkillSet.all
    @experiences = Experience.all
    @projects = Project.all
    @jobs = Job.all
  end
end
