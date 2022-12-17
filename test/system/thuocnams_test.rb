require "application_system_test_case"

class ThuocnamsTest < ApplicationSystemTestCase
  setup do
    @thuocnam = thuocnams(:one)
  end

  test "visiting the index" do
    visit thuocnams_url
    assert_selector "h1", text: "Thuocnams"
  end

  test "should create thuocnam" do
    visit thuocnams_url
    click_on "New thuocnam"

    fill_in "Dacdiem", with: @thuocnam.dacdiem
    fill_in "Duoctinh", with: @thuocnam.duoctinh
    fill_in "Luuysudung", with: @thuocnam.luuysudung
    fill_in "Maula", with: @thuocnam.maula
    fill_in "Noitrong", with: @thuocnam.noitrong
    fill_in "Stt", with: @thuocnam.stt
    fill_in "Ten", with: @thuocnam.ten
    click_on "Create Thuocnam"

    assert_text "Thuocnam was successfully created"
    click_on "Back"
  end

  test "should update Thuocnam" do
    visit thuocnam_url(@thuocnam)
    click_on "Edit this thuocnam", match: :first

    fill_in "Dacdiem", with: @thuocnam.dacdiem
    fill_in "Duoctinh", with: @thuocnam.duoctinh
    fill_in "Luuysudung", with: @thuocnam.luuysudung
    fill_in "Maula", with: @thuocnam.maula
    fill_in "Noitrong", with: @thuocnam.noitrong
    fill_in "Stt", with: @thuocnam.stt
    fill_in "Ten", with: @thuocnam.ten
    click_on "Update Thuocnam"

    assert_text "Thuocnam was successfully updated"
    click_on "Back"
  end

  test "should destroy Thuocnam" do
    visit thuocnam_url(@thuocnam)
    click_on "Destroy this thuocnam", match: :first

    assert_text "Thuocnam was successfully destroyed"
  end
end
