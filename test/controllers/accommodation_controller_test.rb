require 'test_helper'

class AccommodationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get accommodation_show_url
    assert_response :success
  end

  test "should get create" do
    get accommodation_create_url
    assert_response :success
  end

  test "should get index" do
    get accommodation_index_url
    assert_response :success
  end

end
