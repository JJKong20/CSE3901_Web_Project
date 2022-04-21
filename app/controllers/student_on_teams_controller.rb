class StudentOnTeamsController < ApplicationController
  before_action :set_student_on_team, only: %i[ show edit update destroy ]

  # GET /student_on_teams or /student_on_teams.json
  def index
    @student_on_teams = StudentOnTeam.all
    @admin = Admin.find_by(id: current_user_admin)
    @students = @admin.students
  end

  # GET /student_on_teams/1 or /student_on_teams/1.json
  def show
  end

  # GET /student_on_teams/new
  def new
    @student_on_team = StudentOnTeam.new
  end

  # GET /student_on_teams/1/edit
  def edit
  end

  # POST /student_on_teams or /student_on_teams.json
  def create
    @student_on_team = StudentOnTeam.new(student_on_team_params)

    respond_to do |format|
      if @student_on_team.save
        format.html { redirect_to student_on_team_url(@student_on_team), notice: "Student on team was successfully created." }
        format.json { render :show, status: :created, location: @student_on_team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_on_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_on_teams/1 or /student_on_teams/1.json
  def update
    respond_to do |format|
      if @student_on_team.update(student_on_team_params)
        format.html { redirect_to student_on_team_url(@student_on_team), notice: "Student on team was successfully updated." }
        format.json { render :show, status: :ok, location: @student_on_team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_on_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_on_teams/1 or /student_on_teams/1.json
  def destroy
    @student_on_team.destroy

    respond_to do |format|
      format.html { redirect_to student_on_teams_url, notice: "Student on team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_on_team
      @student_on_team = StudentOnTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_on_team_params
      params.fetch(:student_on_team, {})
    end
end
