class StudentsController < ApplicationController

  def show
    @student = Student.find_by(first_name: params[:first_name], last_name: params[:last_name])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
