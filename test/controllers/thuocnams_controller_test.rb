require "test_helper"

class ThuocnamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thuocnam = thuocnams(:one)
  end

  test "should get index" do
    get thuocnams_url
    assert_response :success
  end

  test "should get new" do
    get new_thuocnam_url
    assert_response :success
  end

  test "should create thuocnam" do
    assert_difference("Thuocnam.count") do
      post thuocnams_url, params: { thuocnam: { dacdiem: @thuocnam.dacdiem, duoctinh: @thuocnam.duoctinh, luuysudung: @thuocnam.luuysudung, maula: @thuocnam.maula, noitrong: @thuocnam.noitrong, stt: @thuocnam.stt, ten: @thuocnam.ten } }
    end

    assert_redirected_to thuocnam_url(Thuocnam.last)
  end

  test "should show thuocnam" do
    get thuocnam_url(@thuocnam)
    assert_response :success
  end

  test "should get edit" do
    get edit_thuocnam_url(@thuocnam)
    assert_response :success
  end

  test "should update thuocnam" do
    patch thuocnam_url(@thuocnam), params: { thuocnam: { dacdiem: @thuocnam.dacdiem, duoctinh: @thuocnam.duoctinh, luuysudung: @thuocnam.luuysudung, maula: @thuocnam.maula, noitrong: @thuocnam.noitrong, stt: @thuocnam.stt, ten: @thuocnam.ten } }
    assert_redirected_to thuocnam_url(@thuocnam)
  end

  test "should destroy thuocnam" do
    assert_difference("Thuocnam.count", -1) do
      delete thuocnam_url(@thuocnam)
    end

    assert_redirected_to thuocnams_url
  end
end
