require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_index_url
    assert_response :success
  end

  test "should get show" do
    get movies_show_url
    assert_response :success
  end

  test "should get edit" do
    get movies_edit_url
    assert_response :success
  end

  test "should get new" do
    get movies_new_url
    assert_response :success
  end

  test "should get update" do
    get movies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get movies_destroy_url
    assert_response :success
  end

end
