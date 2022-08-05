class WarzonesController < ApplicationController
  before_action :set_warzone, only: %i[ show edit update destroy ]

  # GET /warzones or /warzones.json
  def index
    @warzones = Warzone.all
  end

  # GET /warzones/1 or /warzones/1.json
  def show
  end

  # GET /warzones/new
  def new
    @warzone = Warzone.new
  end

  # GET /warzones/1/edit
  def edit
  end

  # POST /warzones or /warzones.json
  def create
    @warzone = Warzone.new(warzone_params)

    respond_to do |format|
      if @warzone.save
        format.html { redirect_to warzone_url(@warzone), notice: "Warzone was successfully created." }
        format.json { render :show, status: :created, location: @warzone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @warzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warzones/1 or /warzones/1.json
  def update
    respond_to do |format|
      if @warzone.update(warzone_params)
        format.html { redirect_to warzone_url(@warzone), notice: "Warzone was successfully updated." }
        format.json { render :show, status: :ok, location: @warzone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @warzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warzones/1 or /warzones/1.json
  def destroy
    @warzone.destroy

    respond_to do |format|
      format.html { redirect_to warzones_url, notice: "Warzone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warzone
      @warzone = Warzone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def warzone_params
      params.require(:warzone).permit(:name, :description)
    end
end
