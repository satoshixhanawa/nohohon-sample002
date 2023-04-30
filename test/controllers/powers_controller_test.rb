require "test_helper"

class PowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power = powers(:one)
  end

  test "should get index" do
    get powers_url
    assert_response :success
  end

  test "should get new" do
    get new_power_url
    assert_response :success
  end

  test "should create power" do
    assert_difference("Power.count") do
      post powers_url, params: { power: { e1: @power.e1, e2: @power.e2, e3: @power.e3, e4: @power.e4, e5: @power.e5, e6: @power.e6, e7: @power.e7, e8: @power.e8, p1: @power.p1, p2: @power.p2, p3: @power.p3, p4: @power.p4, p5: @power.p5, p6: @power.p6, p7: @power.p7, p8: @power.p8 } }
    end

    assert_redirected_to power_url(Power.last)
  end

  test "should show power" do
    get power_url(@power)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_url(@power)
    assert_response :success
  end

  test "should update power" do
    patch power_url(@power), params: { power: { e1: @power.e1, e2: @power.e2, e3: @power.e3, e4: @power.e4, e5: @power.e5, e6: @power.e6, e7: @power.e7, e8: @power.e8, p1: @power.p1, p2: @power.p2, p3: @power.p3, p4: @power.p4, p5: @power.p5, p6: @power.p6, p7: @power.p7, p8: @power.p8 } }
    assert_redirected_to power_url(@power)
  end

  test "should destroy power" do
    assert_difference("Power.count", -1) do
      delete power_url(@power)
    end

    assert_redirected_to powers_url
  end
end
