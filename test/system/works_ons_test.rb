require "application_system_test_case"

class WorksOnsTest < ApplicationSystemTestCase
  setup do
    @works_on = works_ons(:one)
  end

  test "visiting the index" do
    visit works_ons_url
    assert_selector "h1", text: "Works Ons"
  end

  test "creating a Works on" do
    visit works_ons_url
    click_on "New Works On"

    fill_in "Generalcomment", with: @works_on.generalComment
    fill_in "Individualgrade", with: @works_on.individualGrade
    click_on "Create Works on"

    assert_text "Works on was successfully created"
    click_on "Back"
  end

  test "updating a Works on" do
    visit works_ons_url
    click_on "Edit", match: :first

    fill_in "Generalcomment", with: @works_on.generalComment
    fill_in "Individualgrade", with: @works_on.individualGrade
    click_on "Update Works on"

    assert_text "Works on was successfully updated"
    click_on "Back"
  end

  test "destroying a Works on" do
    visit works_ons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Works on was successfully destroyed"
  end
end
