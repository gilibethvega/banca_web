class FinantialProductsUsersController < ApplicationController
  before_action :set_finantial_product_users, only: %i[ show edit update destroy ]

  # GET /likes or /likes.json
  def index
    @finantial_product_users = FinantialProductsUser.all
  end

  # GET /likes/1 or /likes/1.json
  def show
  end

  # GET /likes/new
  def new
    @finantial_product_users = FinantialProductsUser.new
  end

  # GET /likes/1/edit
  def edit
  end

  # POST /likes or /likes.json
  def create
    @finantial_product_user = FinantialProductsUser.new(finantial_product_user_params)

    respond_to do |format|
      if @finantial_product_user.save
        format.html { redirect_to @finantial_product_user, notice: "finantial_product_user was successfully created." }
        format.json { render :show, status: :created, location: @finantial_product_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finantial_product_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likes/1 or /likes/1.json
  def update
    respond_to do |format|
      if @finantial_product_user.update(finantial_product_user_params)
        format.html { redirect_to @finantial_product_user, notice: "finantial_product_user was successfully updated." }
        format.json { render :show, status: :ok, location: @finantial_product_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finantial_product_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes/1 or /likes/1.json
  def destroy
    @finantial_product_user.destroy
    respond_to do |format|
      format.html { redirect_to finantial_product_user_url, notice: "Like was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finantial_product_user
      @finantial_product_user = FinantialProductsUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finantial_product_user_params
      params.fetch(:finantial_product_user, {})
    end
end