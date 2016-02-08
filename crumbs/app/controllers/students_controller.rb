class StudentsController < ApplicationController

  def show
    @student = Student.find_by(name: params[:name], id: params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @student = Student.find_by(name: params[:name], id: params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to student_show_path(@student.name, @student.id)
    else
      render 'edit'
    end
  end

  private

  def student_params
    params.require(:student).permit(:email, :location, :affiliation, :description)
  end
end
