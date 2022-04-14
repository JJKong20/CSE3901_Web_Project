require "application_system_test_case"

class StudentOnTeamsTest < ApplicationSystemTestCase
  setup do
    @student_on_team = student_on_teams(:one)
  end

  test "visiting the index" do
    visit student_on_teams_url
    assert_selector "h1", text: "Student On Teams"
  end

  test "creating a Student on team" do
    visit student_on_teams_url
    click_on "New Student On Team"

    click_on "Create Student on team"

    assert_text "Student on team was successfully created"
    click_on "Back"
  end

  test "updating a Student on team" do
    visit student_on_teams_url
    click_on "Edit", match: :first

    click_on "Update Student on team"

    assert_text "Student on team was successfully updated"
    click_on "Back"
  end

  test "destroying a Student on team" do
    visit student_on_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student on team was successfully destroyed"
  end
end
