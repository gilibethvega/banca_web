class ApplicationController < ActionController::Base
  def authorize_admin!
		unless current_user.admin?
			redirect_to root_path, notice: "You must be a admin in to access this section"
		end
	end
end
