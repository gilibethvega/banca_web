class VisaTypesController < ApplicationController
  before_action :set_visa_type, only: %i[ show edit update destroy ]

  # GET /visa_types or /visa_types.json
  def index
    @visa_types = VisaType.all
  end

  # GET /visa_types/1 or /visa_types/1.json
  def show
  end

  # GET /visa_types/new
  def new
    @visa_type = VisaType.new
  end

  # GET /visa_types/1/edit
  def edit
  end

  # POST /visa_types or /visa_types.json
  def create
    @visa_type = VisaType.new(visa_type_params)

    respond_to do |format|
      if @visa_type.save
        format.html { redirect_to @visa_type, notice: "Visa type was successfully created." }
        format.json { render :show, status: :created, location: @visa_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visa_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_types/1 or /visa_types/1.json
  def update
    respond_to do |format|
      if @visa_type.update(visa_type_params)
        format.html { redirect_to @visa_type, notice: "Visa type was successfully updated." }
        format.json { render :show, status: :ok, location: @visa_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visa_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_types/1 or /visa_types/1.json
  def destroy
    @visa_type.destroy
    respond_to do |format|
      format.html { redirect_to visa_types_url, notice: "Visa type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_type
      @visa_type = VisaType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visa_type_params
      params.require(:visa_type).permit(:name)
    end
end
