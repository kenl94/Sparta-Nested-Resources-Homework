require "application_system_test_case"

class SuperherosTest < ApplicationSystemTestCase
  setup do
    @superhero = superheros(:one)
  end

  test "visiting the index" do
    visit superheros_url
    assert_selector "h1", text: "Superheros"
  end

  test "creating a Superhero" do
    visit superheros_url
    click_on "New Superhero"

    fill_in "Age", with: @superhero.age
    fill_in "Name", with: @superhero.name
    fill_in "State", with: @superhero.state
    click_on "Create Superhero"

    assert_text "Superhero was successfully created"
    click_on "Back"
  end

  test "updating a Superhero" do
    visit superheros_url
    click_on "Edit", match: :first

    fill_in "Age", with: @superhero.age
    fill_in "Name", with: @superhero.name
    fill_in "State", with: @superhero.state
    click_on "Update Superhero"

    assert_text "Superhero was successfully updated"
    click_on "Back"
  end

  test "destroying a Superhero" do
    visit superheros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Superhero was successfully destroyed"
  end
end
