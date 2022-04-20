require "test_helper"

class HomePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_pages_home_url
    assert_response :success
  end

  test "should get student_login" do
    get home_pages_student_login_url
    assert_response :success
  end

  test "should get student_create_account" do
    get home_pages_student_create_account_url
    assert_response :success
  end

  test "should get admin_login" do
    get home_pages_admin_login_url
    assert_response :success
  end

  test "should get admin_create_account" do
    get home_pages_admin_create_account_url
    assert_response :success
  end
end
