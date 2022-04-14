class WorksOnsController < ApplicationController
  before_action :set_works_on, only: %i[ show edit update destroy ]

  # GET /works_ons or /works_ons.json
  def index
    @works_ons = WorksOn.all
  end

  # GET /works_ons/1 or /works_ons/1.json
  def show
  end

  # GET /works_ons/new
  def new
    @works_on = WorksOn.new
  end

  # GET /works_ons/1/edit
  def edit
  end

  # POST /works_ons or /works_ons.json
  def create
    @works_on = WorksOn.new(works_on_params)

    respond_to do |format|
      if @works_on.save
        format.html { redirect_to works_on_url(@works_on), notice: "Works on was successfully created." }
        format.json { render :show, status: :created, location: @works_on }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @works_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works_ons/1 or /works_ons/1.json
  def update
    respond_to do |format|
      if @works_on.update(works_on_params)
        format.html { redirect_to works_on_url(@works_on), notice: "Works on was successfully updated." }
        format.json { render :show, status: :ok, location: @works_on }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @works_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works_ons/1 or /works_ons/1.json
  def destroy
    @works_on.destroy

    respond_to do |format|
      format.html { redirect_to works_ons_url, notice: "Works on was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_works_on
      @works_on = WorksOn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def works_on_params
      params.require(:works_on).permit(:individualGrade, :generalComment)
    end
end
