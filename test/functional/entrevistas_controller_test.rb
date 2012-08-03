require 'test_helper'

class EntrevistasControllerTest < ActionController::TestCase
  setup do
    @entrevista = entrevistas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrevistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrevista" do
    assert_difference('Entrevista.count') do
      post :create, entrevista: @entrevista.attributes
    end

    assert_redirected_to entrevista_path(assigns(:entrevista))
  end

  test "should show entrevista" do
    get :show, id: @entrevista.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrevista.to_param
    assert_response :success
  end

  test "should update entrevista" do
    put :update, id: @entrevista.to_param, entrevista: @entrevista.attributes
    assert_redirected_to entrevista_path(assigns(:entrevista))
  end

  test "should destroy entrevista" do
    assert_difference('Entrevista.count', -1) do
      delete :destroy, id: @entrevista.to_param
    end

    assert_redirected_to entrevistas_path
  end
end
