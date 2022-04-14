require "test_helper"

class WorksOnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @works_on = works_ons(:one)
  end

  test "should get index" do
    get works_ons_url
    assert_response :success
  end

  test "should get new" do
    get new_works_on_url
    assert_response :success
  end

  test "should create works_on" do
    assert_difference('WorksOn.count') do
      post works_ons_url, params: { works_on: { generalComment: @works_on.generalComment, individualGrade: @works_on.individualGrade } }
    end

    assert_redirected_to works_on_url(WorksOn.last)
  end

  test "should show works_on" do
    get works_on_url(@works_on)
    assert_response :success
  end

  test "should get edit" do
    get edit_works_on_url(@works_on)
    assert_response :success
  end

  test "should update works_on" do
    patch works_on_url(@works_on), params: { works_on: { generalComment: @works_on.generalComment, individualGrade: @works_on.individualGrade } }
    assert_redirected_to works_on_url(@works_on)
  end

  test "should destroy works_on" do
    assert_difference('WorksOn.count', -1) do
      delete works_on_url(@works_on)
    end

    assert_redirected_to works_ons_url
  end
end
