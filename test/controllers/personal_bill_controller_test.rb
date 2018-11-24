require 'test_helper'

class PersonalBillControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personal_bill_index_url
    assert_response :success
  end

  test "should get show" do
    get personal_bill_show_url
    assert_response :success
  end

  test "should get new" do
    get personal_bill_new_url
    assert_response :success
  end

  test "should get create" do
    get personal_bill_create_url
    assert_response :success
  end

end
