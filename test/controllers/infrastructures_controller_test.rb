require "test_helper"

class InfrastructuresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infrastructures_index_url
    assert_response :success
  end

  test "should get show" do
    get infrastructures_show_url
    assert_response :success
  end

  test "should get new" do
    get infrastructures_new_url
    assert_response :success
  end

  test "should get create" do
    get infrastructures_create_url
    assert_response :success
  end

  test "should get edit" do
    get infrastructures_edit_url
    assert_response :success
  end

  test "should get update" do
    get infrastructures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get infrastructures_destroy_url
    assert_response :success
  end
end
