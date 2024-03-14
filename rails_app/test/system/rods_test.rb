require "application_system_test_case"

class RodsTest < ApplicationSystemTestCase
  setup do
    @rod = rods(:one)
  end

  test "visiting the index" do
    visit rods_url
    assert_selector "h1", text: "Rods"
  end

  test "should create rod" do
    visit rods_url
    click_on "New rod"

    click_on "Create Rod"

    assert_text "Rod was successfully created"
    click_on "Back"
  end

  test "should update Rod" do
    visit rod_url(@rod)
    click_on "Edit this rod", match: :first

    click_on "Update Rod"

    assert_text "Rod was successfully updated"
    click_on "Back"
  end

  test "should destroy Rod" do
    visit rod_url(@rod)
    click_on "Destroy this rod", match: :first

    assert_text "Rod was successfully destroyed"
  end
end
