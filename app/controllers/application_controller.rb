class ApplicationController < ActionController::Base
  	def authorize_admin!
		unless current_user.admin?
			redirect_to root_path, notice: "You must be a admin in to access this section"
		end
	end

	def after_sign_in_path_for(resource)
		if current_user.admin?
			home_admin_path 	
		else
			super
		end
	end
end
