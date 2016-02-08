class PagesController < ApplicationController

  def index
    if current_user && current_user.email.nil?
      redirect_to student_show_path(current_user.name, current_user.id)
    end
  end
end
