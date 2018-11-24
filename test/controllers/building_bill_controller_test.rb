require 'test_helper'

class BuildingBillControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get building_bill_index_url
    assert_response :success
  end

  test "should get show" do
    get building_bill_show_url
    assert_response :success
  end

  test "should get new" do
    get building_bill_new_url
    assert_response :success
  end

  test "should get create" do
    get building_bill_create_url
    assert_response :success
  end

end
