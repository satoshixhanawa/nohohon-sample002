require "application_system_test_case"

class PowersTest < ApplicationSystemTestCase
  setup do
    @power = powers(:one)
  end

  test "visiting the index" do
    visit powers_url
    assert_selector "h1", text: "Powers"
  end

  test "should create power" do
    visit powers_url
    click_on "New power"

    fill_in "E1", with: @power.e1
    fill_in "E2", with: @power.e2
    fill_in "E3", with: @power.e3
    fill_in "E4", with: @power.e4
    fill_in "E5", with: @power.e5
    fill_in "E6", with: @power.e6
    fill_in "E7", with: @power.e7
    fill_in "E8", with: @power.e8
    fill_in "P1", with: @power.p1
    fill_in "P2", with: @power.p2
    fill_in "P3", with: @power.p3
    fill_in "P4", with: @power.p4
    fill_in "P5", with: @power.p5
    fill_in "P6", with: @power.p6
    fill_in "P7", with: @power.p7
    fill_in "P8", with: @power.p8
    click_on "Create Power"

    assert_text "Power was successfully created"
    click_on "Back"
  end

  test "should update Power" do
    visit power_url(@power)
    click_on "Edit this power", match: :first

    fill_in "E1", with: @power.e1
    fill_in "E2", with: @power.e2
    fill_in "E3", with: @power.e3
    fill_in "E4", with: @power.e4
    fill_in "E5", with: @power.e5
    fill_in "E6", with: @power.e6
    fill_in "E7", with: @power.e7
    fill_in "E8", with: @power.e8
    fill_in "P1", with: @power.p1
    fill_in "P2", with: @power.p2
    fill_in "P3", with: @power.p3
    fill_in "P4", with: @power.p4
    fill_in "P5", with: @power.p5
    fill_in "P6", with: @power.p6
    fill_in "P7", with: @power.p7
    fill_in "P8", with: @power.p8
    click_on "Update Power"

    assert_text "Power was successfully updated"
    click_on "Back"
  end

  test "should destroy Power" do
    visit power_url(@power)
    click_on "Destroy this power", match: :first

    assert_text "Power was successfully destroyed"
  end
end
