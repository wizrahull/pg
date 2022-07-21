require "test_helper"

class AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get admins_url, as: :json
    assert_response :success
  end

  test "should create admin" do
    assert_difference("Admin.count") do
      post admins_url, params: { admin: { name: @admin.name, password: @admin.password } }, as: :json
    end

    assert_response :created
  end

  test "should show admin" do
    get admin_url(@admin), as: :json
    assert_response :success
  end

  test "should update admin" do
    patch admin_url(@admin), params: { admin: { name: @admin.name, password: @admin.password } }, as: :json
    assert_response :success
  end

  test "should destroy admin" do
    assert_difference("Admin.count", -1) do
      delete admin_url(@admin), as: :json
    end

    assert_response :no_content
  end
end
