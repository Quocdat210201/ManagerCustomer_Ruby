require "application_system_test_case"

class SinhviensTest < ApplicationSystemTestCase
  setup do
    @sinhvien = sinhviens(:one)
  end

  test "visiting the index" do
    visit sinhviens_url
    assert_selector "h1", text: "Sinhviens"
  end

  test "should create sinhvien" do
    visit sinhviens_url
    click_on "New sinhvien"

    fill_in "Diachi", with: @sinhvien.diachi
    fill_in "Gioitinh", with: @sinhvien.gioitinh
    fill_in "Lop", with: @sinhvien.lop
    fill_in "Stt", with: @sinhvien.stt
    fill_in "Ten", with: @sinhvien.ten
    click_on "Create Sinhvien"

    assert_text "Sinhvien was successfully created"
    click_on "Back"
  end

  test "should update Sinhvien" do
    visit sinhvien_url(@sinhvien)
    click_on "Edit this sinhvien", match: :first

    fill_in "Diachi", with: @sinhvien.diachi
    fill_in "Gioitinh", with: @sinhvien.gioitinh
    fill_in "Lop", with: @sinhvien.lop
    fill_in "Stt", with: @sinhvien.stt
    fill_in "Ten", with: @sinhvien.ten
    click_on "Update Sinhvien"

    assert_text "Sinhvien was successfully updated"
    click_on "Back"
  end

  test "should destroy Sinhvien" do
    visit sinhvien_url(@sinhvien)
    click_on "Destroy this sinhvien", match: :first

    assert_text "Sinhvien was successfully destroyed"
  end
end
