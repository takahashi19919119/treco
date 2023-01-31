require "application_system_test_case"

class UserManagementsTest < ApplicationSystemTestCase
  setup do
    @user_management = user_managements(:one)
  end

  test "visiting the index" do
    visit user_managements_url
    assert_selector "h1", text: "User managements"
  end

  test "should create user management" do
    visit user_managements_url
    click_on "New user management"

    fill_in "Email", with: @user_management.email
    fill_in "Name", with: @user_management.name
    fill_in "Password", with: @user_management.password
    click_on "Create User management"

    assert_text "User management was successfully created"
    click_on "Back"
  end

  test "should update User management" do
    visit user_management_url(@user_management)
    click_on "Edit this user management", match: :first

    fill_in "Email", with: @user_management.email
    fill_in "Name", with: @user_management.name
    fill_in "Password", with: @user_management.password
    click_on "Update User management"

    assert_text "User management was successfully updated"
    click_on "Back"
  end

  test "should destroy User management" do
    visit user_management_url(@user_management)
    click_on "Destroy this user management", match: :first

    assert_text "User management was successfully destroyed"
  end
end
