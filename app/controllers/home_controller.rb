class HomeController < ApplicationController
  before_action :authorize_admin!, only: %i[ admin users ]
  # GET /finantial_infos or /finantial_infos.json
  def index
    @users = User.all
    @posts = Post.all
    @finantial_products = FinantialProduct.all
    @institution_types = InstitutionType.all
    @product_types = ProductType.all
    @finantial_products_users = FinantialProductsUser.all
    @finantial_products_pro = FinantialProduct.filter_by_pro(false)
    @finantial_products_users = FinantialProductsUser.all
  end
  def finantial_product_user
    if @finantial_product.liked?(current_user)
      @finantial_product.remove_like(current_user)
    else
      @finantial_product.add_like(current_user)
    end
    if current_user.present?
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Error in your like action'
    end
  end

  def admin
    @users = User.all
  end
  def users
    @users = User.all
  end

end
