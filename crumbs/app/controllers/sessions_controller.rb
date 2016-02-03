class SessionsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def create
    student = Student.omniauth(env['omniauth.auth'])
    session[:student_id] = student.id
    redirect_to root_url
  end

  def destroy
    session[:student_id] = nil
  end
end
