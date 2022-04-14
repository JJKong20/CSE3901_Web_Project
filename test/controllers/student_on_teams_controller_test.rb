require "test_helper"

class StudentOnTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_on_team = student_on_teams(:one)
  end

  test "should get index" do
    get student_on_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_student_on_team_url
    assert_response :success
  end

  test "should create student_on_team" do
    assert_difference('StudentOnTeam.count') do
      post student_on_teams_url, params: { student_on_team: {  } }
    end

    assert_redirected_to student_on_team_url(StudentOnTeam.last)
  end

  test "should show student_on_team" do
    get student_on_team_url(@student_on_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_on_team_url(@student_on_team)
    assert_response :success
  end

  test "should update student_on_team" do
    patch student_on_team_url(@student_on_team), params: { student_on_team: {  } }
    assert_redirected_to student_on_team_url(@student_on_team)
  end

  test "should destroy student_on_team" do
    assert_difference('StudentOnTeam.count', -1) do
      delete student_on_team_url(@student_on_team)
    end

    assert_redirected_to student_on_teams_url
  end
end
