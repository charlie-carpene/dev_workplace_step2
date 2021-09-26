class FrenchForeignersController < ApplicationController
  before_action :set_french_foreigner, only: %i[ show edit update destroy ]

  # GET /french_foreigners or /french_foreigners.json
  def index
    @french_foreigners = FrenchForeigner.all
  end

  # GET /french_foreigners/1 or /french_foreigners/1.json
  def show
  end

  # GET /french_foreigners/new
  def new
    @french_foreigner = FrenchForeigner.new
  end

  # GET /french_foreigners/1/edit
  def edit
  end

  # POST /french_foreigners or /french_foreigners.json
  def create
    @french_foreigner = FrenchForeigner.new(french_foreigner_params)

    respond_to do |format|
      if @french_foreigner.save
        format.html { redirect_to @french_foreigner, notice: "French foreigner was successfully created." }
        format.json { render :show, status: :created, location: @french_foreigner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @french_foreigner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /french_foreigners/1 or /french_foreigners/1.json
  def update
    respond_to do |format|
      if @french_foreigner.update(french_foreigner_params)
        format.html { redirect_to @french_foreigner, notice: "French foreigner was successfully updated." }
        format.json { render :show, status: :ok, location: @french_foreigner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @french_foreigner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /french_foreigners/1 or /french_foreigners/1.json
  def destroy
    @french_foreigner.destroy
    respond_to do |format|
      format.html { redirect_to french_foreigners_url, notice: "French foreigner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_french_foreigner
      @french_foreigner = FrenchForeigner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def french_foreigner_params
      params.require(:french_foreigner).permit(:country, :year, :nbr_french)
    end
end
