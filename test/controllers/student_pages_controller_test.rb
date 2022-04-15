require "test_helper"

class StudentPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get student_pages_home_url
    assert_response :success
  end
end
