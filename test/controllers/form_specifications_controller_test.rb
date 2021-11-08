require "test_helper"

class FormSpecificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_specifications_index_url
    assert_response :success
  end
end
