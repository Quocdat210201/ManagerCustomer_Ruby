require "test_helper"

class HocsinhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hocsinh = hocsinhs(:one)
  end

  test "should get index" do
    get hocsinhs_url
    assert_response :success
  end

  test "should get new" do
    get new_hocsinh_url
    assert_response :success
  end

  test "should create hocsinh" do
    assert_difference("Hocsinh.count") do
      post hocsinhs_url, params: { hocsinh: { address: @hocsinh.address, age: @hocsinh.age, class: @hocsinh.class, ids: @hocsinh.ids, name: @hocsinh.name } }
    end

    assert_redirected_to hocsinh_url(Hocsinh.last)
  end

  test "should show hocsinh" do
    get hocsinh_url(@hocsinh)
    assert_response :success
  end

  test "should get edit" do
    get edit_hocsinh_url(@hocsinh)
    assert_response :success
  end

  test "should update hocsinh" do
    patch hocsinh_url(@hocsinh), params: { hocsinh: { address: @hocsinh.address, age: @hocsinh.age, class: @hocsinh.class, ids: @hocsinh.ids, name: @hocsinh.name } }
    assert_redirected_to hocsinh_url(@hocsinh)
  end

  test "should destroy hocsinh" do
    assert_difference("Hocsinh.count", -1) do
      delete hocsinh_url(@hocsinh)
    end

    assert_redirected_to hocsinhs_url
  end
end
