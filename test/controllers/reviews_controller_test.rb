require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reviews_new_url
    assert_response :success
  end

  test "should get destroy" do
    get reviews_destroy_url
    assert_response :success
  end

  test "should get create" do
    get reviews_create_url
    assert_response :success
  end

end
