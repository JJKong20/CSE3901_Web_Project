require "test_helper"

class SessionsStudentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_student_new_url
    assert_response :success
  end
end
