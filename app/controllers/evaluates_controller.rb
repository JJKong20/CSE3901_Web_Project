class EvaluatesController < ApplicationController
  before_action :set_evaluate, only: %i[ show edit update destroy ]

  # GET /evaluates or /evaluates.json
  def index
    @evaluates = Evaluate.all
  end

  # GET /evaluates/1 or /evaluates/1.json
  def show
  end

  # GET /evaluates/new
  def new
    @evaluate = Evaluate.new
    @student = Student.find_by(id: current_user_student)
    @team = @student.teams[0]
    @teammates = @team.students
  end

  # GET /evaluates/1/edit
  def edit
  end

  # POST /evaluates or /evaluates.json
  def create
    @evaluate = Evaluate.new(evaluate_params)
    @evaluate.student_id = current_user_student.id
    @evaluate.sender_id = current_user_student.id

    respond_to do |format|
      if @evaluate.save
        format.html { redirect_to '/evaluates/new', notice: "Evaluate was successfully created." }
        format.json { render :show, status: :created, location: @evaluate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evaluate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluates/1 or /evaluates/1.json
  def update
    respond_to do |format|
      if @evaluate.update(evaluate_params)
        format.html { redirect_to evaluate_url(@evaluate), notice: "Evaluate was successfully updated." }
        format.json { render :show, status: :ok, location: @evaluate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evaluate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluates/1 or /evaluates/1.json
  def destroy
    @evaluate.destroy

    respond_to do |format|
      format.html { redirect_to evaluates_url, notice: "Evaluate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluate
      @evaluate = Evaluate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluate_params
      params.require(:evaluate).permit(:rating, :comments, :project_id, :recipient_id)
    end
end
