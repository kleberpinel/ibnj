require 'test_helper'

class PesquisaReligiosasControllerTest < ActionController::TestCase
  setup do
    @pesquisa_religiosa = pesquisa_religiosas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesquisa_religiosas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesquisa_religiosa" do
    assert_difference('PesquisaReligiosa.count') do
      post :create, pesquisa_religiosa: @pesquisa_religiosa.attributes
    end

    assert_redirected_to pesquisa_religiosa_path(assigns(:pesquisa_religiosa))
  end

  test "should show pesquisa_religiosa" do
    get :show, id: @pesquisa_religiosa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesquisa_religiosa.to_param
    assert_response :success
  end

  test "should update pesquisa_religiosa" do
    put :update, id: @pesquisa_religiosa.to_param, pesquisa_religiosa: @pesquisa_religiosa.attributes
    assert_redirected_to pesquisa_religiosa_path(assigns(:pesquisa_religiosa))
  end

  test "should destroy pesquisa_religiosa" do
    assert_difference('PesquisaReligiosa.count', -1) do
      delete :destroy, id: @pesquisa_religiosa.to_param
    end

    assert_redirected_to pesquisa_religiosas_path
  end
end
