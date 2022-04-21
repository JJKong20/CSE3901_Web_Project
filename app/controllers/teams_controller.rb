class TeamsController < ApplicationController
  before_action :set_team, only: %i[ show edit update destroy ]

  # GET /teams or /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1 or /teams/1.json
  def show
    
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create

    teamSizeString = params[:teamSize]
    teamSizeInt = teamSizeString.to_i

    numStudents = Student.count
    numTeams = numStudents / teamSizeInt

    studentList = Student.all.to_a
    studentList.shuffle

    for x in 1..numTeams do

      teamName = "Team " + x.to_s

      team_params = ActionController::Parameters.new({teamName: teamName})

      team_params.permit!

      @team = Team.new(team_params)
      if @team.save
          for x in 1..teamSizeInt do
            student = studentList.pop
            StudentOnTeam.create!({student_id: student.id, team_id: @team.id})
          end
      end
    end
    redirect_to "/student_on_teams/index"
  end


  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to team_url(@team), notice: "Team was successfully updated." }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url, notice: "Team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:teamName)
    end
end
