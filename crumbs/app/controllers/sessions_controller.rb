class SessionsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def create
    begin
      @student = Student.from_omniauth(request.env['omniauth.auth'])
      session[:student_id] = @student.id
      flash[:success] = "Welcome, #{@student.first_name}!"

    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    redirect_to student_show_path(@student.first_name, @student.last_name, @student.id)
  end

  def destroy
    session.delete(:student_id)
    redirect_to root_path
  end
end
