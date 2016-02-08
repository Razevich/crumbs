class SessionsController < ApplicationController

  def create
    begin
      @student = Student.from_omniauth(request.env['omniauth.auth'])
      session[:student_id] = @student.id
      flash[:success] = "Welcome, #{@student.first_name}!"

    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
      redirect_to root_path
  end

  def destroy
    session.delete(:student_id)
    redirect_to root_path
  end
end
