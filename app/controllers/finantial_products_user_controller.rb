class FinantialProductsUserController < ApplicationController
  before_action :set_finantial_product, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /finantial_products_users or /finantial_products_users.json
  def index
    @finantial_products_users = FinantialProductsUser.all
  end


  # GET /finantial_products_users/1 or /finantial_products_users/1.json
  def show
  end

  # GET /finantial_products_users/new
  def new
    @finantial_products_user = FinantialProductsUser.new
  end

  # GET /finantial_products_users/1/edit
  def edit
  end

  # POST /finantial_products_users or /finantial_products_users.json
  def create
    @finantial_products_user = FinantialProductsUser.new(finantial_products_user_params)

    respond_to do |format|
      if @finantial_products_user.save
        format.html { redirect_to @finantial_products_user, notice: "Finantial product was successfully created." }
        format.json { render :show, status: :created, location: @finantial_products_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finantial_products_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finantial_products_users/1 or /finantial_products_users/1.json
  def update
    respond_to do |format|
      if @finantial_products_user.update(finantial_products_user_params)
        format.html { redirect_to @finantial_products_user, notice: "Finantial product was successfully updated." }
        format.json { render :show, status: :ok, location: @finantial_products_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finantial_products_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finantial_products_users/1 or /finantial_products_users/1.json
  def destroy
    @finantial_products_user.destroy
    respond_to do |format|
      format.html { redirect_to finantial_products_users_url, notice: "Finantial product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finantial_product
      @finantial_products_user = FinantialProductsUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finantial_products_users_params
      params.fetch(:finantial_products_user, {})
    end
end
