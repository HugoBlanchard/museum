require "application_system_test_case"

class MasterpiecesTest < ApplicationSystemTestCase
  setup do
    @masterpiece = masterpieces(:one)
  end

  test "visiting the index" do
    visit masterpieces_url
    assert_selector "h1", text: "Masterpieces"
  end

  test "creating a Masterpiece" do
    visit masterpieces_url
    click_on "New Masterpiece"

    fill_in "Artist", with: @masterpiece.Artist
    fill_in "Description", with: @masterpiece.Description
    fill_in "Name", with: @masterpiece.Name
    fill_in "Picture", with: @masterpiece.Picture
    click_on "Create Masterpiece"

    assert_text "Masterpiece was successfully created"
    click_on "Back"
  end

  test "updating a Masterpiece" do
    visit masterpieces_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @masterpiece.Artist
    fill_in "Description", with: @masterpiece.Description
    fill_in "Name", with: @masterpiece.Name
    fill_in "Picture", with: @masterpiece.Picture
    click_on "Update Masterpiece"

    assert_text "Masterpiece was successfully updated"
    click_on "Back"
  end

  test "destroying a Masterpiece" do
    visit masterpieces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Masterpiece was successfully destroyed"
  end
end
