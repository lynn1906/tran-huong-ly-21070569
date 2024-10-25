require "application_system_test_case"

class Subject1sTest < ApplicationSystemTestCase
  setup do
    @subject1 = subject1s(:one)
  end

  test "visiting the index" do
    visit subject1s_url
    assert_selector "h1", text: "Subject1s"
  end

  test "should create subject1" do
    visit subject1s_url
    click_on "New subject1"

    fill_in "Description", with: @subject1.description
    fill_in "Name", with: @subject1.name
    click_on "Create Subject1"

    assert_text "Subject1 was successfully created"
    click_on "Back"
  end

  test "should update Subject1" do
    visit subject1_url(@subject1)
    click_on "Edit this subject1", match: :first

    fill_in "Description", with: @subject1.description
    fill_in "Name", with: @subject1.name
    click_on "Update Subject1"

    assert_text "Subject1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Subject1" do
    visit subject1_url(@subject1)
    click_on "Destroy this subject1", match: :first

    assert_text "Subject1 was successfully destroyed"
  end
end
