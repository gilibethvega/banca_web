class FinantialProductsController < ApplicationController
  before_action :set_finantial_product, only: %i[ show edit update destroy finantial_products_user ]
  before_action :authenticate_user!
  before_action :authorize_admin!, only: %i[ index edit update destroy ]
  # GET /finantial_products or /finantial_products.json
  def index
    @finantial_products = FinantialProduct.all
    @institution_types = InstitutionType.all
    @product_types = ProductType.all
  end

  def finantial_products_user
    if @finantial_product.liked?(current_user)
      @finantial_product.remove_like(current_user)
    else
      @finantial_product.add_like(current_user)
    end
    if current_user.present?
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Error in your  action'
    end
  end


  # GET /finantial_products/1 or /finantial_products/1.json
  def show
  end

  # GET /finantial_products/new
  def new
    @finantial_product = FinantialProduct.new
    @institution_types = InstitutionType.all
    @product_types = ProductType.all
  end

  # GET /finantial_products/1/edit
  def edit
  end

  # POST /finantial_products or /finantial_products.json
  def create
    @finantial_product = FinantialProduct.new(finantial_product_params)

    respond_to do |format|
      if @finantial_product.save
        format.html { redirect_to @finantial_product, notice: "Finantial product was successfully created." }
        format.json { render :show, status: :created, location: @finantial_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finantial_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finantial_products/1 or /finantial_products/1.json
  def update
    respond_to do |format|
      if @finantial_product.update(finantial_product_params)
        format.html { redirect_to @finantial_product, notice: "Finantial product was successfully updated." }
        format.json { render :show, status: :ok, location: @finantial_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finantial_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finantial_products/1 or /finantial_products/1.json
  def destroy
    @finantial_product.destroy
    respond_to do |format|
      format.html { redirect_to finantial_products_url, notice: "Finantial product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finantial_product
      @finantial_product = FinantialProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finantial_product_params
      params.require(:finantial_product).permit(:name, :description, :image, :url, :visibility, :institution_type_id, :product_type_id)
    end
end
