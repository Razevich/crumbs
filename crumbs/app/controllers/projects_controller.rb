class ProjectsController < ApplicationController

  def index
  end

  def show
  end

  def all
    @projects = Project.all
  end
end
