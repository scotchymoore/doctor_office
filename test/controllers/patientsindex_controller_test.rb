require 'test_helper'

class PatientsindexControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get patientsindex_new_url
    assert_response :success
  end

  test "should get show" do
    get patientsindex_show_url
    assert_response :success
  end

  test "should get edit" do
    get patientsindex_edit_url
    assert_response :success
  end

end
