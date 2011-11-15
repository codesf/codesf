require 'test_helper'

class ConsControllerTest < ActionController::TestCase
  setup do
    @con = cons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create con" do
    assert_difference('Con.count') do
      post :create, con: @con.attributes
    end

    assert_redirected_to con_path(assigns(:con))
  end

  test "should show con" do
    get :show, id: @con.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @con.to_param
    assert_response :success
  end

  test "should update con" do
    put :update, id: @con.to_param, con: @con.attributes
    assert_redirected_to con_path(assigns(:con))
  end

  test "should destroy con" do
    assert_difference('Con.count', -1) do
      delete :destroy, id: @con.to_param
    end

    assert_redirected_to cons_path
  end
end
