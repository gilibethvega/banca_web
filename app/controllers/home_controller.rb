class HomeController < ApplicationController
  before_action :authorize_admin!
  # GET /finantial_infos or /finantial_infos.json
  def index
    @users = User.all
  end
  def admin
    @users = User.all
  end
  def users
    @users = User.all
  end
end
