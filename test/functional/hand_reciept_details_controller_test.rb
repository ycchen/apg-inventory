require 'test_helper'

class HandRecieptDetailsControllerTest < ActionController::TestCase
  setup do
    @hand_reciept_detail = hand_reciept_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hand_reciept_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hand_reciept_detail" do
    assert_difference('HandRecieptDetail.count') do
      post :create, hand_reciept_detail: {  }
    end

    assert_redirected_to hand_reciept_detail_path(assigns(:hand_reciept_detail))
  end

  test "should show hand_reciept_detail" do
    get :show, id: @hand_reciept_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hand_reciept_detail
    assert_response :success
  end

  test "should update hand_reciept_detail" do
    put :update, id: @hand_reciept_detail, hand_reciept_detail: {  }
    assert_redirected_to hand_reciept_detail_path(assigns(:hand_reciept_detail))
  end

  test "should destroy hand_reciept_detail" do
    assert_difference('HandRecieptDetail.count', -1) do
      delete :destroy, id: @hand_reciept_detail
    end

    assert_redirected_to hand_reciept_details_path
  end
end
