require 'test_helper'

class GallerycategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gallerycategories_new_url
    assert_response :success
  end

  test "should get create" do
    get gallerycategories_create_url
    assert_response :success
  end

  test "should get update" do
    get gallerycategories_update_url
    assert_response :success
  end

  test "should get edit" do
    get gallerycategories_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get gallerycategories_destroy_url
    assert_response :success
  end

  test "should get index" do
    get gallerycategories_index_url
    assert_response :success
  end

  test "should get show" do
    get gallerycategories_show_url
    assert_response :success
  end

end
