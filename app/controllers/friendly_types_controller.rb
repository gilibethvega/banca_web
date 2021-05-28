class FriendlyTypesController < ApplicationController
  before_action :set_friendly_type, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :authorize_admin!
  # GET /friendly_types or /friendly_types.json
  def index
    @friendly_types = FriendlyType.all
  end

  # GET /friendly_types/1 or /friendly_types/1.json
  def show
  end

  # GET /friendly_types/new
  def new
    @friendly_type = FriendlyType.new
  end

  # GET /friendly_types/1/edit
  def edit
  end

  # POST /friendly_types or /friendly_types.json
  def create
    @friendly_type = FriendlyType.new(friendly_type_params)

    respond_to do |format|
      if @friendly_type.save
        format.html { redirect_to @friendly_type, notice: "Friendly type was successfully created." }
        format.json { render :show, status: :created, location: @friendly_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friendly_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendly_types/1 or /friendly_types/1.json
  def update
    respond_to do |format|
      if @friendly_type.update(friendly_type_params)
        format.html { redirect_to @friendly_type, notice: "Friendly type was successfully updated." }
        format.json { render :show, status: :ok, location: @friendly_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friendly_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendly_types/1 or /friendly_types/1.json
  def destroy
    @friendly_type.destroy
    respond_to do |format|
      format.html { redirect_to friendly_types_url, notice: "Friendly type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendly_type
      @friendly_type = FriendlyType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendly_type_params
      params.require(:friendly_type).permit(:name, :image, :user_id)
    end
end
