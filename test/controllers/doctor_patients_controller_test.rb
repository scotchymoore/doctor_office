require 'test_helper'

class DoctorPatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doctor_patients_new_url
    assert_response :success
  end

end
