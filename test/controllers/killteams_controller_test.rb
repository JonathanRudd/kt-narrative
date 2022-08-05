require "test_helper"

class KillteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @killteam = killteams(:one)
  end

  test "should get index" do
    get killteams_url
    assert_response :success
  end

  test "should get new" do
    get new_killteam_url
    assert_response :success
  end

  test "should create killteam" do
    assert_difference('Killteam.count') do
      post killteams_url, params: { killteam: { assetcap: @killteam.assetcap, base: @killteam.base, description: @killteam.description, factionkeyword: @killteam.factionkeyword, name: @killteam.name, requisition: @killteam.requisition } }
    end

    assert_redirected_to killteam_url(Killteam.last)
  end

  test "should show killteam" do
    get killteam_url(@killteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_killteam_url(@killteam)
    assert_response :success
  end

  test "should update killteam" do
    patch killteam_url(@killteam), params: { killteam: { assetcap: @killteam.assetcap, base: @killteam.base, description: @killteam.description, factionkeyword: @killteam.factionkeyword, name: @killteam.name, requisition: @killteam.requisition } }
    assert_redirected_to killteam_url(@killteam)
  end

  test "should destroy killteam" do
    assert_difference('Killteam.count', -1) do
      delete killteam_url(@killteam)
    end

    assert_redirected_to killteams_url
  end
end
