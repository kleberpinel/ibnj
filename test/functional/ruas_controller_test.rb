require 'test_helper'

class RuasControllerTest < ActionController::TestCase
  setup do
    @rua = ruas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rua" do
    assert_difference('Rua.count') do
      post :create, rua: @rua.attributes
    end

    assert_redirected_to rua_path(assigns(:rua))
  end

  test "should show rua" do
    get :show, id: @rua.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rua.to_param
    assert_response :success
  end

  test "should update rua" do
    put :update, id: @rua.to_param, rua: @rua.attributes
    assert_redirected_to rua_path(assigns(:rua))
  end

  test "should destroy rua" do
    assert_difference('Rua.count', -1) do
      delete :destroy, id: @rua.to_param
    end

    assert_redirected_to ruas_path
  end
end
