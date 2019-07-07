class PagesController < ApplicationController
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
end
