class PagesController < ApplicationController
  def index
    @page_title = "Leo Holman"
  end

  def about
    @page_title = "About"
  end

  def resume
    @page_title = "Resume"
  end
end
