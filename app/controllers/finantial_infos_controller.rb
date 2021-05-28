class FinantialInfosController < ApplicationController
  before_action :set_finantial_info, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ show edit update destroy ]
  before_action :authorize_admin!
  # GET /finantial_infos or /finantial_infos.json
  def index
    @finantial_infos = FinantialInfo.all
  end

  # GET /finantial_infos/1 or /finantial_infos/1.json
  def show
  end

  # GET /finantial_infos/new
  def new
    @finantial_info = FinantialInfo.new
  end

  # GET /finantial_infos/1/edit
  def edit
  end

  # POST /finantial_infos or /finantial_infos.json
  def create
    @finantial_info = FinantialInfo.new(finantial_info_params)

    respond_to do |format|
      if @finantial_info.save
        format.html { redirect_to @finantial_info, notice: "Finantial info was successfully created." }
        format.json { render :show, status: :created, location: @finantial_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @finantial_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finantial_infos/1 or /finantial_infos/1.json
  def update
    respond_to do |format|
      if @finantial_info.update(finantial_info_params)
        format.html { redirect_to @finantial_info, notice: "Finantial info was successfully updated." }
        format.json { render :show, status: :ok, location: @finantial_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @finantial_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finantial_infos/1 or /finantial_infos/1.json
  def destroy
    @finantial_info.destroy
    respond_to do |format|
      format.html { redirect_to finantial_infos_url, notice: "Finantial info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finantial_info
      @finantial_info = FinantialInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def finantial_info_params
      params.require(:finantial_info).permit(:salary, :salay_extra, :working_time, :user_id, :visa_type_id, :worker_type_id)
    end
end
