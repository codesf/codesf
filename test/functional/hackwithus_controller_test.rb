require 'test_helper'

class HackwithusControllerTest < ActionController::TestCase
  setup do
    @hackwithu = hackwithus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hackwithus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hackwithu" do
    assert_difference('Hackwithu.count') do
      post :create, :hackwithu => @hackwithu.attributes
    end

    assert_redirected_to hackwithu_path(assigns(:hackwithu))
  end

  test "should show hackwithu" do
    get :show, :id => @hackwithu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hackwithu.to_param
    assert_response :success
  end

  test "should update hackwithu" do
    put :update, :id => @hackwithu.to_param, :hackwithu => @hackwithu.attributes
    assert_redirected_to hackwithu_path(assigns(:hackwithu))
  end

  test "should destroy hackwithu" do
    assert_difference('Hackwithu.count', -1) do
      delete :destroy, :id => @hackwithu.to_param
    end

    assert_redirected_to hackwithus_path
  end
end
