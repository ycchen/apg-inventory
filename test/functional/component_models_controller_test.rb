require 'test_helper'

class ComponentModelsControllerTest < ActionController::TestCase
  setup do
    @component_model = component_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:component_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create component_model" do
    assert_difference('ComponentModel.count') do
      post :create, component_model: { autocomplete: @component_model.autocomplete, description: @component_model.description, name: @component_model.name, training_required: @component_model.training_required }
    end

    assert_redirected_to component_model_path(assigns(:component_model))
  end

  test "should show component_model" do
    get :show, id: @component_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @component_model
    assert_response :success
  end

  test "should update component_model" do
    put :update, id: @component_model, component_model: { autocomplete: @component_model.autocomplete, description: @component_model.description, name: @component_model.name, training_required: @component_model.training_required }
    assert_redirected_to component_model_path(assigns(:component_model))
  end

  test "should destroy component_model" do
    assert_difference('ComponentModel.count', -1) do
      delete :destroy, id: @component_model
    end

    assert_redirected_to component_models_path
  end
end
