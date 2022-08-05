require "test_helper"

class WarzonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warzone = warzones(:one)
  end

  test "should get index" do
    get warzones_url
    assert_response :success
  end

  test "should get new" do
    get new_warzone_url
    assert_response :success
  end

  test "should create warzone" do
    assert_difference('Warzone.count') do
      post warzones_url, params: { warzone: { description: @warzone.description, name: @warzone.name } }
    end

    assert_redirected_to warzone_url(Warzone.last)
  end

  test "should show warzone" do
    get warzone_url(@warzone)
    assert_response :success
  end

  test "should get edit" do
    get edit_warzone_url(@warzone)
    assert_response :success
  end

  test "should update warzone" do
    patch warzone_url(@warzone), params: { warzone: { description: @warzone.description, name: @warzone.name } }
    assert_redirected_to warzone_url(@warzone)
  end

  test "should destroy warzone" do
    assert_difference('Warzone.count', -1) do
      delete warzone_url(@warzone)
    end

    assert_redirected_to warzones_url
  end
end
