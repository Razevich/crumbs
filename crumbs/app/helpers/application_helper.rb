module ApplicationHelper
  def current_user
    @current_user ||= Student.find_by(id: session[:student_id])
  end
end
