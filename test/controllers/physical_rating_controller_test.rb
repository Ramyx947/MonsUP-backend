require 'test_helper'

class PhysicalRatingControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get physical_rating_show_url
    assert_response :success
  end

  test "should get create" do
    get physical_rating_create_url
    assert_response :success
  end

  test "should get index" do
    get physical_rating_index_url
    assert_response :success
  end

end
