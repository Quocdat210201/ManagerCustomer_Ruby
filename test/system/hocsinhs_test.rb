require "application_system_test_case"

class HocsinhsTest < ApplicationSystemTestCase
  setup do
    @hocsinh = hocsinhs(:one)
  end

  test "visiting the index" do
    visit hocsinhs_url
    assert_selector "h1", text: "Hocsinhs"
  end

  test "should create hocsinh" do
    visit hocsinhs_url
    click_on "New hocsinh"

    fill_in "Address", with: @hocsinh.address
    fill_in "Age", with: @hocsinh.age
    fill_in "Class", with: @hocsinh.class
    fill_in "Ids", with: @hocsinh.ids
    fill_in "Name", with: @hocsinh.name
    click_on "Create Hocsinh"

    assert_text "Hocsinh was successfully created"
    click_on "Back"
  end

  test "should update Hocsinh" do
    visit hocsinh_url(@hocsinh)
    click_on "Edit this hocsinh", match: :first

    fill_in "Address", with: @hocsinh.address
    fill_in "Age", with: @hocsinh.age
    fill_in "Class", with: @hocsinh.class
    fill_in "Ids", with: @hocsinh.ids
    fill_in "Name", with: @hocsinh.name
    click_on "Update Hocsinh"

    assert_text "Hocsinh was successfully updated"
    click_on "Back"
  end

  test "should destroy Hocsinh" do
    visit hocsinh_url(@hocsinh)
    click_on "Destroy this hocsinh", match: :first

    assert_text "Hocsinh was successfully destroyed"
  end
end
